#include <sys/types.h>
#include <sys/wait.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>


int main(int argc, char** argv)
{
    pid_t mypid = getpid();
    pid_t mygpid = getpgid(0);
    if (fork() == 0) {
        pid_t childpid = getpid();
        pid_t childgpid = getpgid(0);
        setpgid(childpid, childpid);
        printf("childpid: %d, childgpid: %d\n", childpid, childgpid);
        char **argv = (char**) calloc(3, sizeof(char*));
        argv[0] = "./lis";
        execv(argv[0], argv);
    } else
    {
        // wait(NULL);
        printf("mypid: %d, mygpid: %d\n", mypid, mygpid);
        int x = 11;
        printf("parent read x: %d\n", x);
    }
    for (int i = 0; i < 10; ++i) {
        sleep(2);
        printf("parent say hi!\n");
    }
    
    return 0;
}