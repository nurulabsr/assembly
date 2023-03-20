.model small
.stack
.data

message_1 db "ILove Bangladesh.........$"
message_2 db "Bangladesh is a..........$"
message_3 db "We are Bangadeshi........$"
message_4 db "jmp in Assembly language......$"
.code
main proc
     mov ax, @data
     mov ds, ax
     
     mov ah, 9
     lea dx, message_1
     int 21h
       
     
     mov ah, 2
     mov dl, 10
     int 21h
     mov dl,13
     int 21h
     
     message_02:
     mov ah, 9
     lea dx, message_2
     int 21h
     jmp message_03
     
     
     
     message_03:
     mov ah,2
     mov dl, 10
     int 21h
     mov dl,13
     int 21h
     
     mov ah, 9
     lea dx, message_3
     int 21h
     jmp message_04
     
     
     
     message_04:
     mov ah, 2
     mov dl, 10
     int 21h
     mov dl, 10
     int 21h
     
     mov ah, 9
     lea dx, message_4
     int 21h
     jmp exit
       
     
     
     exit:
     mov ah, 4ch
     int 21h
     endp 
end main