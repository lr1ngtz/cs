.globl _start
.section .text
_start:
	# Various arithmetic functions
	movq $3, %rbx
	movq %rbx, %rax
	addq %rbx, %rax
	mulq %rbx
	movq $2, %rcx
	addq %rcx, %rax
	movq $4, %rcx
	mulq %rcx
	movq %rax, %rdi

	# Set the exit system call nubmer
	movq $60, %rax

	# Perform the system call
	syscall
