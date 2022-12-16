## CS 254 Program 4
##
## Compute 7x^4 + 2x^3 + 10x^2 -3x +17 using Horner's Method
##
## Jonathan Gargano
## March 24, 2021
## 
## $9 base register, address of x
## $10 accumulator then final result
##


addiu $9, $9, x    # Load x into $9
addi $10, $10, 7   # accumulator = 7
mult $10, $9       # 7x
mflo $10           # move from lo to $10
addi $10, $10, 2   # accumulator = 7x + 2
mult $10, $9       # (7x + 2) * x
mflo $10           # move from lo to $10
addi $10, $10, 10  # accumulator = (7x + 2) * (x) + 10
mult $10, $9       # (7x + 2)(x) + 10) * x
mflo $10           # move from lo to $10
addi $10, $10, -3  # accumulator = (7x + 2) * (x) + 10 * (x) -3
mult $10, $9       # (7x + 2) * (x) + 10 * (x) -3 * (x)
mflo $10           # move from lo to $10
addi $10, $10, 17  # accumulator = (7x + 2) * (x) + 10 * (x) -3 * (x) + 17
