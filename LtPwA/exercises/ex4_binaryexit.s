.section .text
.globl _start
_start:
	movq $0b100000, %rdi
	movq $60, %rax
	syscall
