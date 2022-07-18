#include <stdio.h>

#include "iseven.c"

// This C program uses spaces, not tabs, so that you can use the tab mode from haskell without
// changing your text editor settings

void is_even_wrapper (int x) {
    printf("Is %d even? ", x);
    printf("%s\n", (is_even(x)) ? "YES!" : "no :(");
}

int main (int argc, char** argv) {
    is_even_wrapper (2);
    is_even_wrapper (9);
    is_even_wrapper (14);

    return 1 - is_even(2);
}
