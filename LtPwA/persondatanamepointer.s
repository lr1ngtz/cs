# This file will only need to be assembled once
.section .data

.globl people, numpeople
numpeople:
	# Calcualte the number of people in array
	.quad (endpepole - people)/PERSON_RECORD_SIZE
people:
	# Array of people
	.quad $gkcname, 200, 12, 2, 74, 20
	.quad $jbname, 220, 12, 2, 72, 44
	.quad $cslname, 180, 9, 3, 69, 18
	.quad $taname, 193, 9, 1, 67, 23
	.quad $inname, 130, 7, 4, 60, 55
	.quad $gmname, 124, 6, 1, 68, 71
endpepole: # Marks the end of the array for calculation purposes

gkcname:
    .ascii "Gilbert Keith Chester\0"
jbname:
    .ascii "Jonathan Bartlett\0"
cslname:
    .ascii "Clist Silver Lewis\0"
taname:
    .ascii "Tommy Aquinas\0"
inname:
    .ascii "Isaac Newn\0"
gmname:
    .ascii "Gregory Mend\0"

# Describe the components of the struct
.globl NAME_PTR_OFFSET, WEIGHT_OFFSET, SHOE_OFFSET
.globl HAIR_OFFSET, HEIGHT_OFFSET, AGE_OFFSET
.equ NAME_PTR_OFFSET, 0
.equ WEIGHT_OFFSET, 8
.equ SHOE_OFFSET, 16
.equ HAIR_OFFSET, 24
.equ HEIGHT_OFFSET, 32
.equ AGE_OFFSET, 40

# Total size of the struct
.globl PERSON_RECORD_SIZE
.equ PERSON_RECORD_SIZE, 48
