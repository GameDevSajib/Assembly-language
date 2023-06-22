;BISMILLAH
;Written by :Md Sajibur Rahman
;roll:18cse048
;University of Barishal(BU)

;to build an executable:
;       nasm -f elf hello.asm
;       ld -s -o hello hello.o

section .text
   global _start
_start:


    mov edx,len ;message length
    mov ecx,msg ;message to write
    mov ebx,1   ;file descriptor (stdout)
    mov eax,4   ;system call number (sys_write)
    int 0x80    ;call kernel

    mov eax,1   ;systemcall number (sys_exit)
    int 0x80    ;calling kernel


section.data

msg db 'hacking the world',0xa
;msg db 'i am sajibur rahman',0xa 
len equ $ -  msg ;length of the string 


