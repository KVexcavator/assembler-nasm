;alive.asm
section.data
  msg1      db    "Hello, World!",10,0      ;Строка с NL и 0
  msg1Len   equ   $-msg1-1                  ;Длина без 0
  msg2      db    "Alive and Kicking!",10,0 ;Строка с NL и 0
  msg2Len   equ   $-msg2-1                  ;длина без 0
  radius    dq    357        ; это не строка, можно ли вывести?
  pi        dq    3.14       ; это не строка, можно ли вывести?
section.bss
section.text
  global main
main:
  push    rbp         ;Пролог функции
  mov     rbp,rsp     ;Пролог функции
  mov     rax,1       ;1= запись
  mov     rdi,1       ;1= в устройство стандартного вывода stdout
  mov     rsi,msg1    ;выводимая строка
  mov     rdx,msg1Len ;длина строки
  syscall             ;вывод строки
  mov     rax,1       ;1= запись
  mov     rdi,1       ;1= в поток стандартного выввода stdout
  mov     rsi,msg2    ;Вывод строки
  mov     rdx,msg2Len ;Длина строки
  syscall             ;вывод строки
  mov     rsp,rbp     ;эпилог функции
  pop     rbp         ;эпилог функуии
  mov     rax,60      ;60= выход
  mov     rdi,0       ;0= код успешного завершения
  syscall             ;выход 