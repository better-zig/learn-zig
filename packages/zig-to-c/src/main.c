#include "mathtest.h"
#include <stdio.h>

int main(int argc, char **argv) {
    //
    // todo x: use zig math lib function
    //
    int32_t result = add(42, 1337);

    printf("c call zig >> add() = %d\n", result);
    return 0;
}