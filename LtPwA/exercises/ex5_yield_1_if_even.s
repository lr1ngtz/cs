.globl _start
.section .text
_start:
	movq $4, %rbx
	movq $23, %rax
	divq %rbx
	cmpq $0, %rdx
	je even
	jmp odd

even:
	movq %rdx, %rdi
	jmp finish

odd:
	movq $1, %rdi
	jmp finish

finish:
	movq $60, %rax
	syscall
