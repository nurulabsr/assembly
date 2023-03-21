.model small
.stack 100h
.data

message_1 db "Enter Capital Latter: $" 
message_2 db "Result: $"

.code 
main proc
      mov ax, @data
      mov ds, ax
      
      mov ah, 9
      lea dx, message_1
      int 21h
      
      
      mov ah, 1
      int 21h
      mov bl,al
      
      
      mov ah, 2
      mov dl, 10
      int 21h
      mov dl, 13
      int 21h
      
      mov ah,9
      lea dx, message_2
      int 21h
      
      mov ah,2 
      add bl,32
      mov dl,bl
      int 21h
      
      
      exit:
      mov ah, 4ch
      int 21h
      endp main 
end main