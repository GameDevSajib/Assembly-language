section .data
 userMsg db 'please enter a number:'
 lenUserMsg equ $-userMsg
 dispMsg db 'you have enterd:'
 lenDispMsg equ $-dispMsg

section .bss
  num resb 5

section .text
  global _start

_start:
  mov eax,4
  mov ebx,1
  mov ecx,userMsg
  mov edx,lenUserMsg
  int 80h

  ;Read and store the user input
  mov eax,3
  mov ebx,2
  mov ecx,num
  mov edx,5
  int 80h

  ;Output the message
  mov eax,4
  mov ebx,1
  mov ecx,dispMsg
  mov edx,lenDispMsg
  int 80h

  ;Output the number entered
   mov eax,4
   mov ebx,1
   mov ecx,num
   mov edx,5
   int 80h

   ;exit code
   mov eax,1
   mov ebx,0
   int 80h

