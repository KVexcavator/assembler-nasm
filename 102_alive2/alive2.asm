;alive2.asm
section .data
    msg1    db  "Hello, World!",0
    msg2    db  "Alive and Kicking!",0
    radius  dd  357
    pi      dq  3.14
    fmtstr  db  "%s",10,0   ;Формат вывода строки
    fmtflt  db  "%lf",10,0  ;Формат вывода числа с плавающей точкой
    fmtint  db  "%d",10,0   ;Формат вывода целого числа
section .bss
section .text
extern  printf
    global main
main:
    push    rbp
    mov     rbp,rsp
;print msg1
    mov     rax,0   ;без числа с плавающей точкой
    mov     rdi,fmtstr
    mov     rsi,msg1
    call    printf
;print msg2
    mov     rax,0   ;без числа с плавающей точкой
    mov     rdi,fmtstr
    mov     rsi,msg2
    call    printf
;print radius
    mov     rax,0   ;без числа с плавающей точкой
    mov     rdi,fmtint
    mov     rsi,[radius]
    call    printf
;print pi
    mov     rax,1   ;Используется 1 регистр xmm
    movq    xmm0,[pi]
    mov     rdi,fmtflt
    call    printf
    mov     rsp,rbp
    pop     rbp
ret
