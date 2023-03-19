.model small
.stack 100h
.data

variablename db 9   ; variable value = 10 
var1 db ?
.code 

main proc
    mov ax, @data 
    mov ds, ax   
    
    
    ;----------Display variable value from---------------; 
    
    mov ah,2
    add variablename, 48  ;  48+9 = 57 = 9
    mov dl,variablename
    int 21h      
                                    
                                    
    ;---------Store value in variable from user ------------; 
    
    mov ah, 1
    int 21h
    mov var1, al
    
    ;-------- Display var1 value from user ----------;
    mov ah, 2
    mov dl,var1
    int 21h
    
    
    
    ;--------Exit from doss-------------;
    exit:
    mov ah, 4ch
    int 21h
    endp 

 end main






