#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"

int main(int argc, char *argv[]) {
    int fd;

    if(argc < 2) {
        printf(1, "Need atleast one argument\n");
        exit();
    }

    if(argc > 2) {
        printf(1, "Need only one argument\n");
        exit();
    }

    fd = open(argv[1], O_CREATE);

    if(fd < 0) {
        printf(1, "Cannot create the file\n");
        exit();
    }

    printf(1, "%s File Created successfully!\n", argv[1]);

    // close file descriptor (memory leaks)
    close(fd);

    exit();
}