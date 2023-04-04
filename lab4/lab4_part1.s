.text
.global fill_bitmap

#*****************************************************
# fill_bitmap: 
#  Given a color, will fill the bitmap display with that color.
#-----------------------------------------------------
#   Inputs:
#           a0 = 8 bit color value
#   Outputs:
#           No register outputs
#*****************************************************
fill_bitmap:
# YOUR CODE HERE, only use t registers (and a, v where appropriate)
 	li t3, 0x00000C00 # loads starting in t3
 	li t4, 0x00000FFF # loads the end array into t4
 	startBitmap: 
 		beq t3, t4, endBitmap # if t3, the register address iterated upon, is equal to the ending address, jump to endBitmap 
 		sb a0, (t3) # stores the color in a0 in t3
 		add t3, t3, 1 # adds 4 bits to t3
 		j startBitmap # return
 	endBitmap: 
 		sb a0, (t4) # prints the final pixel of the bitmap and finishes clear_bitmap
 	jr ra
