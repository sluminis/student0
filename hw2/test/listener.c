#include <sys/types.h>
#include <sys/wait.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

void sighandler(int signum) {
  int pid = getpid();
  if (signum == SIGINT) {
    printf("listener %d received signal SIGINT\n", pid);
  } else if (signum == SIGTSTP) {
    printf("listener %d received signal SIGTSTP\n", pid);
  } else if (signum == SIGTTIN) {
    printf("listener %d received signal SIGTTIN\n", pid);
  } else if (signum == SIGTTOU) {
    printf("listener %d received signal SIGTTOU\n", pid);
  } else if (signum == SIGCHLD) {
    printf("listener %d received signal SIGCHLD\n", pid);
  } 
}

int main() {
    signal (SIGINT, sighandler);
    signal (SIGTSTP, sighandler);
    signal (SIGTTIN, sighandler);
    signal (SIGTTOU, sighandler);
    signal (SIGCHLD, sighandler);
    int pid = getpid();
    int pgid = getpgrp();
    printf("listener is running (%d, %d)\n", pid, pgid);
    for (int i = 0; i < 15; ++i) {
        sleep(2);
        printf("listener is alive!\n");
    }
    printf("listener is done!\n");
    return 0;
}