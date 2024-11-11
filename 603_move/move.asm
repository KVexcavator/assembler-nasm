;move.asm
section .data
  bNum  db  123
  wNum  dw  12345
  dNum  dd  1234567890
  qNum1 dq  1234567890123456789
  qNum2 dq  123456
  qNum3 dq  3.14
section .bss
section .text
  global main
main:
push  rbp
mov   rbp,rsp
  mov rax,-1              ;заполнение регистра rax удиницами
  mov al, byte [bNum]     ;верхние (старшие) биты регистра не очищать
  xor rax,rax             ;очитска регистра rax
  mov al, byte [bNum]     ;теперь rax содержит корректные данные
  mov rax,-1              ;заполнение регистра rax единицами
  mov ax, word [wNum]     ;верхние (старшие) биты регистра не очищать
  xor rax,rax             ;очитска регистра rax
  mov ax, word [wNum]     ;теперь rax содержит корректные данные
  mov rax,-1              ;заполнение регистра rax единицами
  mov eax, dword [dNum]   ;очистить верхние(старшие) биты регистра rax
  mov rax,-1              ;заполнение регистра rax единицами
  mov eax, dword [qNum1]  ;очистить верхние(старшие) биты регистра rax
  mov qword [qNum2], rax  ;один операнд всегда должен быть регистром
  mov rax, 123456         ;операнд-источнои - непосредчтвенное значение
  movq xmm0,[qNum3]       ;инструкция для числа с плавающей точкой
mov rsp,rbp
pop rbp
ret

;ddd move
