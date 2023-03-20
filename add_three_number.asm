.model small
.stack 100h
.data

var1 db ?
message_1 db "Enter 1st number $"
message_2 db 10,13, "Enter 2nd number $"
message_3 db 10,13, "Enter 3rd number $"
message_4 db 10,13, "Result $"
.code

main proc
     mov ax, @data
     mov ds, ax
     
     
     mov ah,9
     lea dx, message_1
     int 21h
     
     mov ah, 1 
     int 21h
     mov cl, al

     mov ah, 9
     lea dx, message_2
     int 21h
     
     mov ah,1
     int 21h
     mov bl, al
     
     mov ah, 9
     lea dx, message_3
     int 21h
     
     mov ah, 1
     int 21h
     mov bh, al
     
     mov ah,9
     lea dx, message_4
     int 21h
     
     
     add cl, bl
     sub cl, 48
     mov ch, cl
     add ch,bh
     sub ch,48
     mov var1, ch
      
      
      
     mov ah,2
     mov dl, var1
     int 21h
     
     exit:
     mov ah, 4ch
     int 21h
     endp main
 end main

