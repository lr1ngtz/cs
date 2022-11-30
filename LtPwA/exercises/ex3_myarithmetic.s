.section .text
.globl _start
_start:
	movq $5, %rdi
	movq %rdi, %rax
	subq $3, %rax
	movq %rax, %rdi
	incq %rdi
	mulq %rdi
	movq %rax, %rdi
	movq $50, %rbx
	movq $250, %rax
	divq %rbx
	movq %rax, %rdi
	decq %rdi

	movq $60, %rax

	syscall
