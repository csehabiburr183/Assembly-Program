.model small
.stack 100h
.data
b db 'MD HABIBUR RAHMAN $'
.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,b
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    