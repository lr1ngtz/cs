### This program will find the largest value in the array
.globl _start

.section .data
# How many data elements we have
numberofnums:
	.quad 7
# The data elements themselves (array)
nums:
	.quad 5, 20, 33, 80, 52, 10, 1

.section .text
_start:
	# Put the number of elements of the array in %rcx
	# direct addressing mode. It is taking the contents of the memory
	# at the memory address labeled by numberofnums
	movq numberofnums, %rcx

	# Put the "address" of the first element in %rbx
	# the memory address itself is being used as an immediate-mode value
	movq $nums, %rbx

	# Use %rdi to hold the current-high value
	movq $0, %rdi

	### Check Preconditions
	# If there are no numbers, stop
	cmp $0, %rcx
	je endloop

mainloop:
	# Get the next value (currently pointed to by %rbx)
	movq (%rbx), %rax

	# If it's not bigger, go to the end of the loop
	cmp %rdi, %rax
	jbe loopcontrol

	# Otherwise, store this as a biggest element so far
	movq %rax, %rdi

loopcontrol:
	# Change the addres in %rbx to point to the next value
	addq $8, %rbx

	# Decrement %rcx and keep going until %rcx is zero
	loopq mainloop

endloop:
	movq $60, %rax
	syscall
