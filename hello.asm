section .text
	global _start

_start:
	mov edx, len
	mov ecx, msg
	mov ebx, 1
	mov eax, 4;	system_call
	int 0x80 ;	calling kaenel

	mov eax, 1
	int 0x080

section .data
	msg db "BISMILLAH",0xa
	len equ $ -msg
