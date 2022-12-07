.globl _start

.section .data
numberofnums:
	.quad 10
nums:
	.quad 1, 2, 3, 5, 8, 13, 21, 34, 55, 89
lookup_num:
	.quad 55

.section .text

_start:
	# counter
	movq numberofnums, %rcx
	movq $0, %rbx
	movq lookup_num, %rdx

	cmp $0, %rcx
	je endloop

mainloop:
	# Get the next value of nums indexed by %rbx
	movq nums(,%rbx,8), %rax

	cmp %rax, %rdx
	je lookup_true

	incq %rbx
	# Decrement %rcx until and keep going until %rcx is zero
	loopq mainloop

	cmp $0, %rcx
	je lookup_false

lookup_true:
	movq $1, %rdi
	jmp endloop

lookup_false:
	movq $0, %rdi
	jmp endloop
	
endloop:
	movq $60, %rax
	syscall
