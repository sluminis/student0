#include <sys/types.h>
#include <sys/wait.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

int main() {
    char *str = (char*) calloc(1, sizeof(char*));
    int res = strcmp(str, "<");
    printf("dqwdqw%d\n", res);
    return 0;
}