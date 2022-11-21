%include "stud_io.inc"
global _start

section .text
;; machine code of command below consits of 5 bytes b8 00 00 00 00
;; first byte (b8) means "put passed num into the register", the
;; remaining 4 bytes (00 00 00 00) specify the num to be placed
;; in the register, in our case the num is 0. 
_start: mov eax, 0 ; counter
again:
	PRINT "HELLO"
	PUTCHAR 10
	inc eax
	cmp eax, 5
	jl again
	FINISH

