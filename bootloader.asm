BITS 16
ORG 0x7C00
start:
xor ax,ax
mov ds,ax
mov es,ax
call l
mov ax, 0x8000
mov ds, ax
jmp 0x8000:0000
l:
mov ax, 0x8000
mov ah,0x02
mov dl,0x80
mov es,ax
mov cx,12
mov bx,2
call r
r:
mov al,0x01
mov ch,0
mov cl,bl
mov dh,0
mov di,0
int 0x13
jc e
add bx,1
loop r
p:
mov ah,0x0E
.n:
lodsb
cmp al,0
je .d
int 0x10
jmp .n
.d:
ret
e:
mov si,i
call p
i db "BE: 0",0
times 510-($-$$) db 0
dw 0xAA55
