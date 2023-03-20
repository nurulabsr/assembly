
.model small
.stack 100h
.data

message_1 db "Assembly Language...... $"
message_2 db "What a beautiful Assembly language is..? $"  
message_3 db "01001010101010101010101010101010101010101..$"
message_4 db "101010101010101010101010101010101010011011..... Air Drone....$"

.code 
main proc 
    mov ax, @data
    mov ds, ax
    
    mov ah,9
    lea dx, message_1
    int 21h
    
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl, 13
    int 21h
    
    
    mov ah,9
    lea dx, message_2
    int 21h
    
               
               
    mov ah,2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    mov ah, 9
    lea dx, message_3
    int 21h
    
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    
    mov ah,9
    lea dx, message_4
    int 21h
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21  
    
    
    
    exit:
    mov ah, 4ch
    int 21h
    endp
        
end main

