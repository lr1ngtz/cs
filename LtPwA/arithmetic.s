.globl _start
.section .text
_start:
	# Various arithmetic functions
	movq $3, %rdi
	movq %rdi, %rax
	addq %rdi, %rax
	mulq %rdi
	movq $2, %rdi
	addq %rdi, %rax
	movq $4, %rdi
	mulq %rdi
	movq %rax, %rdi

	# Set the exit system call nubmer
	movq $60, %rax

	# Perform the system call
	syscall
