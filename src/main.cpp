#include "ColorLoader.h"
#include <cstdio>
#include <cstdlib>
#include <fstream>

int main(int argc, char* argv[])
{
    if (argc != 2) {
        printf("Wrong number of arguments: %d\n", argc);
        return EXIT_FAILURE;
    }

    ColorLoader colorLoader(argv[1]);

    colorLoader.load();
}
