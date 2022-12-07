.globl _start

.section .data
numberofnums:
	.quad 7
nums:
	.quad 5, 8, 10, 57, 65, 10, 1

.section .text

_start:
	# Put the number of elements of the array in %rcx
	movq numberofnums, %rcx

	# Put the index of the first element in %rbx
	movq $0, %rbx

	# User %rdi to hold the cuttent-high value
	movq $0, %rdi

	# If there are no numbers, stop
	cmp $0, %rcx
	je endloop

mainloop:
	# Get the next value of nums indexed by %rbx
	movq nums(,%rbx,8), %rax

	# If its not bigger, go to the end of the loop
	cmp %rdi, %rax
	jbe loopcontrol

	# Otherwise, store this as the biggest element so far
	movq %rax, %rdi

loopcontrol:
	# Move %rbx to the next index
	incq %rbx

	# Decrmenet %rcx and keep going until %rcx is zero
	loopq mainloop

endloop:
	movq $60, %rax
	syscall 
