#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

#define v2ci(v) (v < 48 ? 0 : v < 115 ? 1 : (v - 35) / 40)
#define color_index() (36 * ir + 6 * ig + ib)
#define dist_square(A,B,C, a,b,c) ((A-a)*(A-a) + (B-b)*(B-b) + (C-c)*(C-c))

static int rgb_to_x256(uint8_t r, uint8_t g, uint8_t b)
{
    // Calculate the nearest 0-based color index at 16 .. 231
    int ir = v2ci(r), ig = v2ci(g), ib = v2ci(b);   // 0..5 each

    // Calculate the nearest 0-based gray index at 232 .. 255
    int average = (r + g + b) / 3;
    int gray_index = average > 238 ? 23 : (average - 3) / 10;  // 0..23

    // Calculate the represented colors back from the index
    static const int i2cv[6] = {0, 0x5f, 0x87, 0xaf, 0xd7, 0xff};
    int cr = i2cv[ir], cg = i2cv[ig], cb = i2cv[ib];  // r/g/b, 0..255 each
    int gv = 8 + 10 * gray_index;  // same value for r/g/b, 0..255

    // Return the one which is nearer to the original input rgb value
    int color_err = dist_square(cr, cg, cb, r, g, b);
    int gray_err  = dist_square(gv, gv, gv, r, g, b);
    return color_err <= gray_err ? 16 + color_index() : 232 + gray_index;
}

int main(int argc, char *argv[])
{
    if (argc != 4) {
        return 1;
    }

    printf("%d\n", rgb_to_x256(atoi(argv[1]), atoi(argv[2]), atoi(argv[3])));
}
