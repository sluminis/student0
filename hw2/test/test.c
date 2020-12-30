#include <signal.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int main(void)
{
    //sighandler_t signal(int signum, sighandler_t handler);
    signal (SIGINT, SIG_IGN);
    signal (SIGTSTP, SIG_IGN);
    signal (SIGTTIN, SIG_IGN);
    signal (SIGTTOU, SIG_IGN);
    signal (SIGCHLD, SIG_IGN);
    printf("test0 is going to sleep\n");
    int pid = fork();
    if (pid == 0) {
        int cpid = getpid();
        setpgid(cpid, cpid);
        tcsetpgrp(STDIN_FILENO, cpid);
        printf("child foreground %d\n", tcgetpgrp(STDIN_FILENO));
        printf("child roll! %d\n", cpid);
        signal (SIGINT, SIG_DFL);
        signal (SIGTSTP, SIG_DFL);
        signal (SIGTTIN, SIG_DFL);
        signal (SIGTTOU, SIG_DFL);
        signal (SIGCHLD, SIG_DFL);
        for (int i = 0; i < 30; ++i) {
            sleep(2);
            printf("/child alive\n");
        }
    } else {
        int ppid = getpid();
        printf("back to parent! %d\n", ppid);
        printf("parent foreground %d\n", tcgetpgrp(STDIN_FILENO));
        for (int i = 0; i < 30; ++i) {
            sleep(2);
            printf("|parent alive\n");
        }
    }
    sleep(120);
    return 0;
}