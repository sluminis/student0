#include "utils.h"

#define BUFFER_SIZE 4096

void copy_file_content(int fd_from, int fd_to) {
    char buffer[BUFFER_SIZE];
    ssize_t nread = 0;

    while ((nread = read(fd_from, buffer, BUFFER_SIZE)) > 0) {
        write(fd_to, buffer, nread);
    }
}