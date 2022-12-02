.globl _start
.section .text
_start:
	movq $7, %rdi

	# that tells the CPU to alter its instruction pointer so that the next
	# instruction to execute will be the one at the memory address
	# labeled by nextplace
	jmp nextplace

	# These two instructions are skipped
	movq $8, %rbx
	addq %rbx, %rdi

nextplace:
	movq $60, %rax
	syscall
