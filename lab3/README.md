# Lab 3: Assembly Programming

Implementation of assembly code compliant with the RV32I standard using emulsiV, a visual simulator for a
simple RISC-V processor. 

## a.hex
Copies the first 5 characters of the alphabet represented using ASCII encoding from their source storage locations starting at the address “0x00000600” to the destination storage location starting at the
address “0x00000500”. Each character is printed to the “text output” (at address “0xC0000000”).

## b.hex
Similar to the program in “a.hex”. Difference being that the immediate value “5” is added to each character after loaded from their source storage locations starting at the address “0x00000600”. Then the modified (value + 5) is stored at the destination storage location starting at the address “0x00000500”. 

## c.hex
Finds the square of a number by repeated immediate addition using the “addi” instruction. Store the result at address “0x00000500”.

## d.hex
Similar to the program in “c.hex”. Difference being that instead of using the addi instruction, the number to square is stored in a register. Repeated addition is used to get the result and is stored at the address “0x00000500”.

## e.hex
Loads two sequences of source data starting at addresses “0x00000500” and “0x00000600”. 
Iterates over the source data to either bitwise “XOR” or “AND”
s1 and s2 and store the result in the memory range starting at
“0x00000700”
The index of the data determines if you are to “XOR” or “AND” s1 and s2. If the index is even, perform “XOR”, and if the index is odd perform “AND”. 





