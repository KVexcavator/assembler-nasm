;betterloop.asm
extern printf
section .data
  number  dq  5
  fmt db  "The sum from 0 to %ld is %ld",10,0
section .bss
section .text
  global main
main:
  push rbp
  mov rbp,rsp
  mov rcx,[number]  ;иницализация регистра rcx зачением number
  mov rax,0
bloop:
  add rax,rcx ;прибавление rcxдля получения суммы
  loop  bloop ;цикл пока значение rcx уменьшается на 1
              ;до теж пор пока выполнится условие rcx=0
  mov rdi,fmt ;rcx=0,продолжить здесь
  mov rsi,[number]  ;выводимая сумма
  mov rdx,rax
  mov rax,0 ;без исползования чисил с плавающей точкой
  call  printf ;вывод результата
  mov rsp,rbp
  pop rbp
  ret
