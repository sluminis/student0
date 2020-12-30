#include <ctype.h>
#include <errno.h>
#include <fcntl.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <signal.h>
#include <sys/wait.h>
#include <termios.h>
#include <unistd.h>

#include "executor.h"
#include "tokenizer.h"

void sighandler(int signum) {
  int pid = getpid();
  if (signum == SIGINT) {
    printf("process %d received signal SIGINT\n", pid);
  } else if (signum == SIGTSTP) {
    printf("process %d received signal SIGTSTP\n", pid);
  } else if (signum == SIGTTIN) {
    printf("process %d received signal SIGTTIN\n", pid);
  } else if (signum == SIGTTOU) {
    printf("process %d received signal SIGTTOU\n", pid);
  } else if (signum == SIGCHLD) {
    printf("process %d received signal SIGCHLD\n", pid);
  } 
}

/* Entrance of execute non-built-in command */
int execute_cmd(struct tokens *tokens) {
  printf("axx: %d\n", axx++);
  int n = tokens_get_length(tokens);
  if (n == 0) return -1;
  char **argv = (char**) malloc(sizeof(char*)*(n + 1));
  for (int i = 0; i < n; ++i) {
    argv[i] = tokens_get_token(tokens, i);
  }
  argv[0] = complete_cmd(argv[0]);
  if (argv[0] == NULL) return -1;
  bool bg = false;
  if (strcmp(argv[n - 1], "&") == 0) {
    bg = true;
    argv[n - 1] = NULL;
    n -= 1;
  }

  argv[n] = NULL;
  int status = 0;
  int pid = fork();
  if (pid == 0) {
    int cpid = getpid();
    setpgid(cpid, cpid);
    if (!bg) {
      tcsetpgrp(STDIN_FILENO, cpid);
    }
    printf("child pid: %d\n", getpid());
    printf("child pgid: %d\n", getpgid(0));
    signal (SIGINT, SIG_DFL);
    signal (SIGTSTP, SIG_DFL);
    signal (SIGQUIT, SIG_DFL);
    signal (SIGTTIN, SIG_DFL);
    signal (SIGTTOU, SIG_DFL);
    signal (SIGCHLD, SIG_DFL);
    int io_res = redirect_io(n, argv);
    if (io_res != 0) {
      exit(io_res);
    }
    for (int i = 0; i < n; ++i) {
      printf("%s ", argv[i]);
    }
    printf("\n");
    int result = execv(argv[0], argv);
    exit(result);
  }

  setpgid (pid, pid);
  if (!bg) {
    waitpid(-pid, &status, WUNTRACED);
  }
  tcsetpgrp(STDIN_FILENO, getpgrp());
  free(argv[0]);
  free(argv);
  return status;
}

char *complete_cmd(char *cmd) {
  static char env_buffer[buffer_length];
  char *ret = (char*) malloc(sizeof(char)*buffer_length);
  if (access(cmd, F_OK) != -1) {
    strcpy(ret, cmd);
    return ret;
  }
  char *env_path = getenv("PATH");
  strcpy(env_buffer, env_path);
  char *dir = strtok(env_buffer, ":");
  while (dir != NULL) {
      ret[0] = '\0';
      strcat(ret, dir);
      strcat(ret, "/");
      strcat(ret, cmd);
      // printf("%s - %d\n", ret, access(ret, F_OK));
      if (access(ret, F_OK) != -1) {
        return ret;
      }
      dir = strtok(NULL, ":");
  }
  free(ret);
  return NULL;
}

int redirect_io(int n, char **argv) {
//   printf("argv size: %d\n", n);
//   for (int i = 0; i < n; ++i) {
//     printf("%s ", argv[i]);
//   }
//   printf("\n");
  int fdi, fdo;
  char *filename = NULL;
  for (int i = 1; i < n; ++i) {
    char *token = argv[i];
    if (strcmp(token, "<") == 0) {
    //   printf("get <\n");
      argv[i] = NULL;
      if (i >= n - 1) return -1;
      filename = argv[i + 1];
      if ((fdi = open(filename, O_RDONLY)) != -1) {
        dup2(fdi, STDIN_FILENO);
      } else {
        return -1;
      }
    } 
    else if (strcmp(token, ">") == 0) {
    //   printf("get >\n");
      argv[i] = NULL;
      if (i >= n - 1) return -1;
      filename = argv[i + 1];
      fdo = creat(filename, 0644);
      dup2(fdo, STDOUT_FILENO);
    }    
  }
  return 0;
}