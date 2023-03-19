.model small
.stack 100h
.code

main proc
;------------------------------------- take input from user------------------------------------------------;
    mov ah,1
    int 21h
    mov bl, al
     
     
;------------------------------------- line break-----------------------------------------------------------;       
    mov ah, 2
    mov dl, 10 
    int 21h
    mov dl, 13
    int 21h
    
    
    
;----------------------------------------Display the input value--------------------------------------------;
    mov ah, 2
    mov dl, bl
    int 21h       
    
             ; break line
      
    mov ah,2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
             ; take input from user   bl bh cl
    mov ah,1
    int 21h
    mov cl, al
    
    
             ; line break
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h

    
             ; Display the value
    
    mov ah,2
    mov dl, cl
    int 21h    
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    mov ah,1
    int 21h
    mov bh, al  
    
    mov ah,2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    
    mov ah,2
    mov dl, bh
    int 21h
    
    
    
    
    
 ;----------------------------------------- End --------------------------------------------------------------;   
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main
    






