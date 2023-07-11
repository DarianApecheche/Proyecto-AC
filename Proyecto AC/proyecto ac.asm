
include "emu8086.inc"

data segment

lat1 dw ?
lat2 dw ?
long1 dw ?
long2 dw ?
auxHarvesine dw 57
raiz dw ?
var1 dw  ?
x db ?
y db ?

data ends

stack segment

db 64 dup(?)

stack ends

code segment

start proc far

assume ds:data, cs:code, ss:stack

push ds
mov ax, 0
push ax

mov ax, data
mov ds, ax
mov es, ax

mov x, 2
mov y, 2
gotoxy x, y
call pthis
db "CALCULAR LA DISTANCIA ENTRE DOS CIUDADES:", 0

add y, 2
gotoxy x, y
call pthis
db "Introduzca la primera latitud:", 0
add x, 31
gotoxy x, y
call scan_num
mov lat1, cx
add y, 2
mov x, 2
gotoxy x, y
call pthis
db "Introduzca la primera longitud:", 0
add x, 33
gotoxy x, y
call scan_num
mov long1, cx
add y, 2
mov x, 2
gotoxy x, y
call pthis
db "Introduzca la segunda latitud:", 0
add x, 31
gotoxy x, y
call scan_num
mov lat2, cx
add y, 2
mov x, 2
gotoxy x, y
call pthis
db "Introduzca la segunda longitud:", 0
add x, 33
gotoxy x, y
call scan_num
mov long2, cx

cuerpo_formula:
mov ax, lat2
sub ax, lat1
mov bx, long2
sub bx, long1
mul ax
mov cx, ax
mov ax, bx
mul ax

add cx, ax
mov ax, cx
mov long1, ax

mov ax, 0
mov cx, 0
mov var1,0

raiz_cuadrada:  ;calcular la raiz de la operacion con las variables
inc var1
mov ax, var1
mov cx,var1
mul ax
mov bx, long1
cmp ax, bx
jl menor
jg igual
je igual

menor:
mov ax, cx
jmp raiz_cuadrada

igual:
mov raiz, cx
mov ax, var1
jmp segunda_parte

segunda_parte:  ;Multiplicar el resultado por la constante de Haversine
mov ax, 0
mov bx, 0
mov bx, auxHarvesine
mov ax, var1
mul bx

imprimir_resultado:
mov x, 2
add y, 2
gotoxy x, y
call pthis
db "La distancia es aproximadamente:", 0
add x, 35
gotoxy x, y
call print_num_uns

add y, 6
mov x, 2
gotoxy x, y
call pthis
db "Gracias por usar nuestro servicio", 0

ret

start endp

code ends

define_scan_num
define_pthis
define_clear_screen
define_print_num_uns

endm

end start



; [SOURCE]: C:\emu8086\MySource\Darian.asm
+++++