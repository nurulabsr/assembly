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
    
    mov cx, 40
    mov ah, 2
    mov dl, "A"
    
    
    level_0:
    int 21h
    inc dl
    loop level_0   
    
   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; beef funny;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;          
                
    mov ah,2
    mov dl, 07
    int 21h   
    
    mov ah, 2
    mov dl, 07
    int 21h
    
    mov ah,2
    mov dl, 07
    int 21h
    
    
    mov ah, 2
    mov dl, 07
    int 21h
    
    mov ah, 2
    mov dl, 07
    int 21h
    
    
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
   
   
   
   
   
   
                                                                                                     