#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "golibrary.h"

/* function returning the max between two numbers */
void print_some_string(char context[]) {
    printf("    ---> This function has been invoked with context '%s'\n", context);
}

int main(int argc, char **argv) {

    char *err;
    GoUint sum;

    Add(1, 2, &sum);
    printf("You can pass a pointer that will be updated: 'Add(1, 2, &sum)' gives sum = %llu.\n", sum);

    printf("You can get a result back 'ReturnsAString()': '%s'\n", ReturnsAString());

    printf("This is the result from print_some_string() invoked from C-land:\n");
    print_some_string("c-land");

    return 0;
}