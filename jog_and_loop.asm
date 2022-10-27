include "Emu8086.inc"
.stack 100h
.model small
.data
.code
main proc
   
   mov ah,1
   int 21h  ;input nilam
   
   mov bl,al ;bl er moddo al k raklam    
   
   mov ah,2
   mov dl,0ah
   int 21h
   mov dl,0dh
   int 21h
   
   mov ah,1
   int 21h     ;arekta input nilam
   
   
   add bl,al
   sub bl,48  ;eber add krlam kintu ascci biog dewa lage      
   
         mov ah,2
   mov dl,0ah
   int 21h
   mov dl,0dh
   int 21h
   
   mov ah,2
   mov dl,bl ;bl k dl er moddo rekhe print koralam
   int 21h  
   
   
   ;;eber loop kivhabe kaj kore  
   mov cx,3
   level:
   printn "hello world"
   loop level
    
    
    
    
    
    
    
    main endp
end main