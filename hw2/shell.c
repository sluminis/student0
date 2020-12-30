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

#include "tokenizer.h"
#include "executor.h"

/* Convenience macro to silence compiler warnings about unused function parameters. */
#define unused __attribute__((unused))

/* Whether the shell is connected to an actual terminal or not. */
bool shell_is_interactive;

/* File descriptor for the shell input */
int shell_terminal;

/* Terminal mode settings for the shell */
struct termios shell_tmodes;

/* Process group id for the shell */
pid_t shell_pgid;

int cmd_exit(struct tokens *tokens);
int cmd_help(struct tokens *tokens);
int cmd_pwd(struct tokens *tokens);
int cmd_cd(struct tokens *tokens);
int cmd_kill(struct tokens *tokens);

/* Built-in command functions take token array (see parse.h) and return int */
typedef int cmd_fun_t(struct tokens *tokens);

/* Built-in command struct and lookup table */
typedef struct fun_desc {
  cmd_fun_t *fun;
  char *cmd;
  char *doc;
} fun_desc_t;

fun_desc_t cmd_table[] = {
  {cmd_help,  "?",    "show this help menu"},
  {cmd_exit,  "exit", "exit the command shell"},
  {cmd_pwd,   "pwd",  "print current working directory path"},
  {cmd_cd,    "cd",   "change current working directory"},
  {cmd_kill,  "kill", "send a signal to designated process"},
};

/* Prints a helpful description for the given command */
int cmd_help(unused struct tokens *tokens) {
  for (unsigned int i = 0; i < sizeof(cmd_table) / sizeof(fun_desc_t); i++)
    printf("%s - %s\n", cmd_table[i].cmd, cmd_table[i].doc);
  return 1;
}

/* Exits this shell */
int cmd_exit(unused struct tokens *tokens) {
  exit(0);
}

/* Prints current working directory */
int cmd_pwd(unused struct tokens *tokens) {
  static char cwd[buffer_length];
  getcwd(cwd, sizeof(cwd));
  printf("%s\n", cwd);
  return 0;
}

/* Change working directory */
int cmd_cd(struct tokens *tokens) {
  static char last_path[buffer_length] = ".";
  size_t token_length = tokens_get_length(tokens);
  char *fixed_path = NULL;
  char *path = NULL;

  if (token_length == 1)
    path = getenv("HOME");
  else {
    path = tokens_get_token(tokens, 1);
    if (path[0] == '~') {
      char *home = getenv("HOME");
      fixed_path = (char*) malloc(sizeof(char)*buffer_length);
      fixed_path[0] = '\0';
      strcat(fixed_path, home);
      strcat(fixed_path, path + 1);
      path = fixed_path;
    }
    else if (strcmp(path, "-") == 0) {
      path = last_path;
      printf("%s\n", path);
    }
  }
  
  char cwd[buffer_length];
  getcwd(cwd, sizeof(cwd));
  // printf("path: %s\n", path);
  int result = chdir(path);
  if (result < 0) {
    printf("cd %s: No such file or directory\n", path);
  } else {
    strcpy(last_path, cwd);
  }
  if (fixed_path) {
      free(fixed_path);
  }
  return result;
}

/* Built-in command struct and lookup table */
typedef struct sig_desc {
  char *signame;
  int signum;
} sig_desc_t;

sig_desc_t sig_table[] = {
  {"-INT", 2},
  {"-TSTP", 20},
  {"-QUIT", 3},
  {"-KILL", 9},
  {"-CONT", 18},
  {"-TREM", 15},
  {"-TTIN", 21},
  {"-TTOU", 22}
};

int cmd_kill(struct tokens *tokens) {
  int n = tokens_get_length(tokens);
  if (n < 3) {
    printf("too few arguments\n");
    return -1;
  }
  char *signame = tokens_get_token(tokens, 1);
  char *pidstr = tokens_get_token(tokens, 2);
  int signum = -1;
  for (int i = 0; i < sizeof(sig_table) / sizeof(sig_desc_t); ++i) {
    if (strcmp(sig_table[i].signame, signame) == 0) {
      signum = sig_table[i].signum;
    }
  }
  if (signum < 0) {
    printf("signal not support\n");
    return -2;
  }
  int pid = atoi(pidstr);
  return kill(pid, signum);
}

/* Looks up the built-in command, if it exists. */
int lookup(char cmd[]) {
  for (unsigned int i = 0; i < sizeof(cmd_table) / sizeof(fun_desc_t); i++)
    if (cmd && (strcmp(cmd_table[i].cmd, cmd) == 0))
      return i;
  return -1;
}

/* Intialization procedures for this shell */
void init_shell() {
  /* Our shell is connected to standard input. */
  shell_terminal = STDIN_FILENO;

  /* Check if we are running interactively */
  shell_is_interactive = isatty(shell_terminal);

  if (shell_is_interactive) {
    /* If the shell is not currently in the foreground, we must pause the shell until it becomes a
     * foreground process. We use SIGTTIN to pause the shell. When the shell gets moved to the
     * foreground, we'll receive a SIGCONT. */
    while (tcgetpgrp(shell_terminal) != (shell_pgid = getpgrp()))
      kill(-shell_pgid, SIGTTIN);

    /* Saves the shell's process id */
    shell_pgid = getpid();

    /* Take control of the terminal */
    tcsetpgrp(shell_terminal, shell_pgid);

    /* Save the current termios to a variable, so it can be restored later. */
    tcgetattr(shell_terminal, &shell_tmodes);
  }
}

int main(unused int argc, unused char *argv[]) {
  axx = 1;
  printf("axx: %d\n", axx++);
  init_shell();
  printf("shell pid: %d\n", getpid());
  signal (SIGINT, sighandler);
  signal (SIGTSTP, sighandler);
  signal (SIGQUIT, SIG_IGN);
  signal (SIGTTIN, SIG_IGN);
  signal (SIGTTOU, SIG_IGN);
  signal (SIGCHLD, SIG_IGN);

  static char line[4096];
  int line_num = 0;

  /* Please only print shell prompts when standard input is not a tty */
  if (shell_is_interactive)
    fprintf(stdout, "%d: ", line_num);

  while (fgets(line, 4096, stdin)) {
    /* Split our line into words. */
    struct tokens *tokens = tokenize(line);

    /* Find which built-in function to run. */
    int fundex = lookup(tokens_get_token(tokens, 0));

    if (fundex >= 0) {
      cmd_table[fundex].fun(tokens);
    } else {
      /* REPLACE this to run commands as programs. */
      int result = execute_cmd(tokens);
      if (result != 0) {
        printf("command execute fail, error code: %d\n", result);
      }
    }

    if (shell_is_interactive)
      /* Please only print shell prompts when standard input is not a tty */
      fprintf(stdout, "%d: ", ++line_num);

    /* Clean up memory */
    tokens_destroy(tokens);
  }

  return 0;
}
