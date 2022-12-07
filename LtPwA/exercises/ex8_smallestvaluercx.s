.globl _start

.section .data
numberofnums:
	.quad 7
nums:
	.quad 20, 15, 10, 9, 8, 4, 19

.section .text
_start:
	# Put the number of elemtns of the array in %rcx
	movq numberofnums, %rcx

	# Current smallest value
	movq nums, %rdi

	# If there are no numbers, stop
	cmp $0, %rcx
	je endloop

mainloop:
	# Get the next value of nums indexed by %rcx
	# So, since nums is known by the assembler (it is whatever address the
	# assembler assigns to that data), the assembler can also subtract 8
	# and encode that number into the instruction. The subtraction here is not
	# done by the CPU when it runs, it is done at the time of assembly. Again,
	# the reason for this is that, %rcx is going to be 1 through 7,
	# not 0 through 6. Therefore, if we didn’t adjust it, it would start
	# at the second element and run past the end of the array.
	movq nums-8(,%rcx,8), %rax

	# If it's not bigger, go to the end of the loop
	cmp %rdi, %rax
	jae loopcontrol

	# Otherwise, store this as the biggest element so far
	movq %rax, %rdi

loopcontrol:
	# Decrmenet %rcx and keep going until %rcx is zero
	loopq mainloop

endloop:
	movq $60, %rax
	syscall
