.model small
.stack 100h
.data

message db "Learning is one of the best way to update human groth.........$"

.code
main proc
    mov ax,@data
    mov ds,ax      ;  
    
    
    mov ah, 9
    lea dx, message
    int 21h
    
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main
    
    
    
    




