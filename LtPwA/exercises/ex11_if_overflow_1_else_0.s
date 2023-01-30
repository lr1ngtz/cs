.globl _start
.section .text
_start:
	movb $0b11111100, %al
	movb $0b00000001, %bl
	addb %al, %bl
	jc overflow
	jmp not_overflow
overflow:
	movq $60, %rax
	movq $1, %rdi
	syscall
not_overflow:
	movq $60, %rax
	movq $0, %rdi
	syscall
