#include <cstdio>
#include <cstdlib>
#include <fstream>

int main(int argc, char *argv[])
{
    if (argc != 2) {
        printf("Wrong number of arguments: %d\n", argc);
        return EXIT_FAILURE;
    }


    std::ifstream file(argv[1]);

    if (!file.good()) {
        printf("Unable to open color file: %s\n", argv[1]);
    }
}
