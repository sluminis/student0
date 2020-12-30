#pragma once
#include "tokenizer.h"

extern int axx;

/* Find which folder in $PATH contains program and complete command */
char *complete_cmd(char *cmd);

/* Redirect input/output to support '<' and '>' operator */
int redirect_io(int n, char **argv);

/* Entrance of execute non-built-in command */
int execute_cmd(struct tokens *tokens);

void sighandler(int signum);
