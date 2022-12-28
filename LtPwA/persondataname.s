# This file will only need to be assembled once
.section .data

.globl people, numpeople
numpeople:
	# Calcualte the number of people in array
	.quad (endpepole - people)/PERSON_RECORD_SIZE
people:
	# Array of people
	# In this approach we're having a fixed-length field has problems.
	# First of all, it imposes a maximum size on the name. Here, we simply
	# can’t support names longer than 31 characters. Additionally,
	# for short names, we are wasting space. If your name is “Jo Smit,” we’ve
	# wasted a lot of space holding your name.
	.ascii "Jonathan Joestar\0"
	.quad 200, 12, 2, 74, 20
	.ascii "Joseph Joestar\0"
	.quad 220, 12, 2, 72, 44
	.ascii "Josuke Higashikata\0"
	.quad 180, 9, 3, 69, 18
	.ascii "Jotaro Kujo\0"
	.quad 193, 9, 1, 67, 23
	.ascii "Jolyne Cujoh\0"
	.quad 130, 7, 4, 60, 55
	.ascii "Giorno Giovanna\0"
	.quad 124, 6, 1, 68, 71
endpepole: # Marks the end of the array for calculation purposes

# Describe the components of the struct
.globl NAME_OFFSET, WEIGHT_OFFSET, SHOE_OFFSET
.globl HAIR_OFFSET, HEIGHT_OFFSET, AGE_OFFSET
.equ NAME_OFFSET, 0
.equ WEIGHT_OFFSET, 32
.equ SHOE_OFFSET, 40
.equ HAIR_OFFSET, 48
.equ HEIGHT_OFFSET, 56
.equ AGE_OFFSET, 64

# Total size of the struct
.globl PERSON_RECORD_SIZE
.equ PERSON_RECORD_SIZE, 72
