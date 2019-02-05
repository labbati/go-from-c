In Go land:
    $ go build -o golibrary.so -buildmode=c-shared golibrary.go

In C land:
    $ clang -o executable main.c -L. golibrary.so
    $ ./executable