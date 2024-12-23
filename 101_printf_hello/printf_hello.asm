;printf_hello.asm
extern  printf  ;обьявление функции, как внешней
section .data
    msg db  "Printf is work!",0
    fmtstr  db  "This is our string: %s",10,0 ;Формат вывода строки
section .bss
section .text
    global main
main:
    push    rbp
    mov     rbp,rsp
    mov     rdi,fmtstr  ;Первый аргумент для функции printf
    mov     rsi,msg     ;Второй аргумент для функции printf
    mov     rax,0       ;Регистры xmm не применяются
    call    printf      ;Вызов внешней функкции
    mov     rsp,rbp
    pop     rbp
    mov     rax,60      ;60 = выход
    mov     rdi,0       ;0 = код успешного завершения
    syscall             ;Выход
