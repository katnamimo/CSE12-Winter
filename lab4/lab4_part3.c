#include <stdio.h>
// left top corner = (1,8)
// right bottom corner = (25, 23)
extern void fill_bitmap(unsigned char color_value);
extern void draw_pixel(unsigned char pixel_color, int y, int x);

void rectangle(unsigned char background_color, unsigned char lc, int left, int top, int right, int bottom){
    fill_bitmap(background_color);
    // fix this stuff
    int a = left;
    int b = top;
    
    while (a <= right){
        draw_pixel(lc, a, top);
        draw_pixel(lc, a, bottom);
        a++;
    }
    while (b <= bottom){
        draw_pixel(lc, left, b);
        draw_pixel(lc, right, b);
        b++;
    }
}
int main(){
    rectangle(0xbc, 0x43, 1, 8, 25, 23);
    return 0;
}
