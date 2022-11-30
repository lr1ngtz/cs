# The following code will play around with different register sizes. It starts
# by loading a 16-bit value into %bx, and then it accesses the high and low
# bytes (%bh and %bl) individually.

.section .text
.globl _start
_start:
	movw $0b0000000100000010, %bx
	addb %bh, %bl
	movb $0, %bh

	movq %rbx, %rdi
	
	movq $60, %rax
	syscall
