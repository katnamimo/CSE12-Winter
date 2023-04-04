.text
.global draw_pixel

#*****************************************************
# draw_pixel:
#  Given a coordinates y (row) in a1, and x (col) in
#  a2 sets corresponding value in memory to the color 
#  given by a0	
#-----------------------------------------------------
#   Inputs:
#           a0 = 8 bit color value
#           a1 = y coordinate of pixel in format
#           a2 = x coordinate of pixel in format
#   Outputs:
#           No register outputs
#*****************************************************
# pixel address = base address + (( row * row size) + column)
draw_pixel:
    li x3, 0x00000C00 # load base address into x3
    li x5, 32 # load length of row into x5
    li x6, 0 # load counter of how many times multiplied
    startMultiply:
        beq x5, x6, stopMultiply # if 32 and counter are equal, go to stopMultiply
        add x7, x7, a1 # if not, add 15 to x7, store into x7 
        add x6, x6, 1 # add one to counter
        j startMultiply
    stopMultiply:
        add x8, x3, x7 # add base address and x7 store into x8
        add x8, x8, a1  # add 15 to t8 and store into x8 
        sb a0, (x8) # draw color a0 at address x8 
	jr ra
    