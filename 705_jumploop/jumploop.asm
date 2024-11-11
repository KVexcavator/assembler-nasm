;jumploop.asm
; многократное выполнения группы группы инструкций пока выполняется условие
extern printf
section .data
  number  dq  5
  fmt db  "The sum form 0 to %ld is %ld",10,0
section .bss
section .text
  global main
main:
  push  rbp
  mov rbp,rsp
  mov rbx,0 ;Счётчик
  mov rax,0 ;Сумма будут сохраняться в регистре rax
jloop:
  add rax,rbx
  inc rbx
  cmp rbx,[number] ;конечное число итераций цикла достигнуто?
  jle jloop ;конечное число итераций пока не достигнуто, продожение цикла
  ;конечное число итераций достигнуто, продожить здесь
  mov rdi,fmt ;подготовка вывода результата
  mov rsi,[number]
  mov rdx,rax
  mov rax,0
  call  printf
  mov rsp,rbp
  pop rbp
  ret
