.model small
.stack 100h
.data
b db ?
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov b,al         
    
    mov ah,2
    mov dl,b
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp

end main