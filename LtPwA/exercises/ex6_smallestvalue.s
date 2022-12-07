.globl _start

.section .data
counter:
	.quad 5
nums:
	.quad 5, 10, 30, 3, 7

.section .text
_start:
	movq counter, %rcx

	# Put the "address" of the first element in %rbx
	movq $nums, %rbx

	# Current smallest value
	movq nums, %rdi

	cmp $0, %rcx
	je endloop

mainloop:
	# Get the next value (currently pointed to by %rbx)
	movq (%rbx), %rax

	# If it's not less, go to the end of the loop
	cmp %rdi, %rax
	jae loopcontrol

	# Otherwise, store this as a smallest element so far
	movq %rax, %rdi

loopcontrol:
	# Change the addres in %rbx to point to the next value
	addq $8, %rbx

	# Decrement %rcx and keep going until %rcx is zero
	loopq mainloop
	

endloop:
	movq $60, %rax
	syscall
