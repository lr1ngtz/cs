# This file will only need to be assembled once
.section .data

.globl people, numpeople
numpeople:
	# Calcualte the number of people in array
	.quad (endpepole - people)/PERSON_RECORD_SIZE
people:
	# Array of people
	.quad 200, 2, 74, 20
	.quad 220, 2, 72, 44
	.quad 180, 3, 69, 18
	.quad 193, 1, 67, 23
	.quad 130, 4, 60, 55
	.quad 124, 1, 68, 71
endpepole: # Marks the end of the array for calculation purposes

# Describe the components of the struct
.globl WEIGHT_OFFSET, HAIR_OFFSET, HEIGHT_OFFSET, AGE_OFFSET
.equ WEIGHT_OFFSET, 0
.equ HAIR_OFFSET, 8
.equ HEIGHT_OFFSET, 16
.equ AGE_OFFSET, 24

# Total size of the struct
.globl PERSON_RECORD_SIZE
.equ PERSON_RECORD_SIZE, 32
