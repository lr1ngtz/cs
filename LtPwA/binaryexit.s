.section .text
.globl _start
_start:
	movq $0b1111, %rdi
	movq $60, %rax
	syscall
