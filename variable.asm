.model small
.stack 100h
.data

variablename db 9   ; variable value = 10
.code 

main proc
    mov ax, @data 
    mov ds, ax
    
    mov ah,2
    add variablename, 48  ;  48+9 = 57 = 9
    mov dl,variablename
    int 21h    
    
    
    exit:
    mov ah, 4ch
    int 21h
    endp 

 end main






