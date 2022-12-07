# The following code will allocate and initialize three quadwords of data.
# It will add two of them together and store the result in the final location.
.globl _start

# This section for fixed-length data
.section .data
first_value:
	# allocate a single quadword and store the value 4 there
	.quad 4
second_value:
	.quad 6
final_result:
	.quad 0

.section .text
_start:
	# Load values into registers
	movq first_value, %rbx
	movq second_value, %rcx

	# Perform the computation
	addq %rbx, %rcx

	# Store results into memory
	movq %rcx, final_result

	# Return the value to the operating system
	movq $60, %rax
	movq final_result, %rdi
	syscall
