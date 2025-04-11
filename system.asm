; Система, должна весить менее 5 кб

start:
    mov si, message
    call print
    jmp $

print:
    mov ah,0x0E
.next:
    lodsb
    cmp al,0
    je .done
    int 0x10
    jmp .next
.done:
    ret

newline:
    mov ah, 0x02
    inc dh
    int 0x10

message db "Hello world!", 0
times 5120-($-$$) db 0
