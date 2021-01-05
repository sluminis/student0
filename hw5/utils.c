#include "utils.h"
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <pthread.h>
#include <errno.h>

#include "libhttp.h"

int copy_fd_data(int fd_from, int fd_to) {
    char buffer[BUFFER_SIZE];
    ssize_t nread = 0;
    ssize_t nwrite = 0;

    while ((nread = read(fd_from, buffer, BUFFER_SIZE)) > 0) {
        nwrite = write(fd_to, buffer, nread);
        if (nwrite < 0) return nwrite;
    }

    return nread < 0 ? nread : 0;
}

