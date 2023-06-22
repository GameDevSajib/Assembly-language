section .text
global _start

_start:

   mov edx,len ;message er length
   mov ecx,msg ;message leker jonno
   mov ebx,1   ;file descripter 
   mov eax,4   ;system call number(sys_write)
   int 0x80    ;calling kernel


   ;uprer man gulo te just valu bosay a niche aber o liksi 

   mov edx,20   ;meaasge er length bole dilam
   mov ecx,s2   ;message lekhar jonno 
   mov ebx,1    ;file descripter 
   mov eax,4    ;system call number (sys_write)
   int 0x80

section .data
msg db 'Dislpaying 5 hash',0xa ;soja kothay printf
len equ $ - msg ;message er length 
s2 times 5 db '#'
