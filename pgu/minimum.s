# VARIABLES: The registers have the following uses:
#
# %edi - Holds the index of the data item being examined
# %ebx - Smallest data item found
# %eax - Current data item
#
# The following memory locations are used:
#
# data_items - contains the item data. A 5 is used
# to terminate the data
#
 .section .data
data_items: #These are the data items
 .long 3,67,34,262,45,75,54,34,44,33,22,11,5

 .section .text

 .globl _start
_start:
  movl $0, %edi # move 0 into the index register
  movl data_items(,%edi,4), %eax # (INDEXED ADDRESSING MODE) load the first byte of data 
  movl %eax, %ebx # since this is the first item, %eax is the biggest
  
  start_loop: # start loop
    # cmpl - compare, the result of cmpl stores in %eflags (status register)
    cmpl $5, %eax # check to see if we’ve hit the end
    # je - jump if equal, jump to the end_loop
    je loop_exit

    incl %edi # incl increments the value of %edi by one
    movl data_items(,%edi,4), %eax
    cmpl %eax, %ebx # compare values
    jl start_loop # jump to loop beginning if the new one is bigger
                   
    movl %eax, %ebx # move the value as the largestChapter
    jmp start_loop # jump to loop beginning
  loop_exit:
    # %ebx is the status code for the exit system call
    # and it already has the maximum number
    movl $1, %eax #1 is the exit() syscall
    int $0x80
