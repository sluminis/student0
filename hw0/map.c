#include <stdio.h>
#include <stdlib.h>

/* A statically allocated variable */
int foo;

/* UNCOMMENT THIS LINE for 3.4.3*/
extern int recur(int i);


/* A statically allocated, pre-initialized variable */
volatile int stuff = 7;

int main(int argc, char *argv[]) {
    /* A stack allocated variable */
    volatile int i = 0;
    int j = 100;

    /* Dynamically allocate some stuff */
    volatile char *buf1 = malloc(1000);
    /* ... and some more stuff */
    volatile char *buf2 = malloc(100);

    printf("_main  @ %p\n", main);
    printf("recur @ %p\n", recur);

    /* TODO 2: Fix to get address of the stack variable */
    printf("_main stack: %p\n", &i);
    
    printf("local variable: %p\n", &j);

    /* TODO 3: Fix to get address of a static variable */
    printf("static data: %p\n", &stuff);

    printf("Heap: malloc 1: %p\n", buf1);
    printf("Heap: malloc 2: %p\n", buf2);

    recur(4);
    return 0;
}
