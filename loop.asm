.model small
.stack 100h
.data
                                                                                                    
message db " Loop in Assembly language...$ "
.code 
main proc
    mov ax, @data
    mov ds, ax
    
    
    mov ah,9
    lea dx,message
    int 21h
    
   mov ah,2
   mov dl,10
   int 21h
   mov dl,13
   int 21h  
   
   
   
   
   
                                                                                                     