#include <stdio.h>
#include <ctype.h>

int main(int argc, char *argv[]) {
    FILE *fp = NULL;
    int bytes = 0;
    int words = 0;
    int lines = 0;
    int in;
    enum states { WHITESPACE, WORD };
    enum states state = WHITESPACE;

    char *fileName = argv[1];
    // printf("filename: %s\n", fileName);
    // printf("========================\n");
    FILE* file = fopen(fileName, "r");

    while ((in = fgetc(file)) != -1)
    {
        char inc = (char) in;
        bytes += 1;

        if (inc == '\n') {
            lines += 1;
            state = WHITESPACE;
        }
        else if (isspace(inc)) {
            state = WHITESPACE;
        }
        else {
            if (state == WHITESPACE) {
                words += 1;
            }
            state = WORD;
        }
    }

    printf("%d %d %d %s\n", lines, words, bytes, argv[1]);
    return 0;
}
