# Lab 4: Assembly vs C Programming

Program to perform some primitive graphics operations on
a simulated memory-mapped bitmap display in emulsiV. Created with a combination of RV32I assembly and C language, using bare-metal cross-compilation to generate the binary (.hex) files to run in emulsiV.

## lab4_part1.s
fill_bitmap: Given a color, this function will fill the bitmap display with that
color.
Inputs:
a0 = 8-bit color value
Outputs:
No register outputs
## lab4_part2.s
draw_pixel: Given a coordinates y (row) in a1, and x (col) in a2 sets the
corresponding value in memory to the color given by a0. This works by storing the RGB
value in the appropriate location of the row-major bitmap array starting at address
0x00000C00.
Inputs:
a0 = 8-bit color value
a1 = y coordinate of pixel
a2 = x coordinate of pixel
Outputs:
No register outputs
## lab4_part3.s
Contains function that will draw a rectangle to the bitmap with the desired background and
line color. 






