


;.model tiny
;.code
;.startup


.486
.model flat, stdcall
option casemap: none
 
include /masm32/include/windows.inc
include /masm32/include/user32.inc
include /masm32/include/kernel32.inc
 
includelib /masm32/lib/user32.lib
includelib /masm32/lib/kernel32.lib
 
include /masm32/macros/macros.asm 
uselib masm32, comctl32, ws2_32 

.data
.code 
start:
pop cx

hel:
xchg ax,bx
db 108h shr 1
db 4eh ; dec si
db 9eh shr 1
db 3ch ;cmp al,xx
db 100h shr 1
db 40h
fmask db '*.*',0
lodsw
cwd
mov dl,al
shl dx,1
int 21h

jmp hel

end start