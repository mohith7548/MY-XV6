#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"

//char *dirs[];

//int findNumberofDelims(char* s) {
//    int n = 0, i, j;
//    // printf(1, "%d\n", sizeof(s));
//    for (i = 0; i < sizeof(s)-1; i++) {
//        if(*(s+i) == "/")
//            n += 1;
//    }
//    return n;
//}

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

//    int n = findNumberofDelims(argv[1]);
//    printf(1, "%d", n);
//    printf(1, "%s", *dirs[1]);

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
