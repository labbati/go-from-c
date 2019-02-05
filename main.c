#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "labbamath.h"

int main(int argc, char **argv) {

    char *err;
    GoUint sum;

    err = Add(1, 2, &sum);

    if (err != NULL) {
        fprintf(stderr, "error: %s\n", err);
        free(err);
        return 1;
    }

    printf("Result %llu.\n", sum);

    return 0;
}