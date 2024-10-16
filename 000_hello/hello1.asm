section .data
  msg db  "hello, world", 0x0A  ; Добавляем символ новой строки в конец

section .text
  global main
main:
  mov rax, 1         ; 1 = syscall номер для write
  mov rdi, 1         ; 1 = файловый дескриптор для stdout
  mov rsi, msg       ; адрес строки для вывода
  mov rdx, 13        ; количество байтов для вывода (12 символов + новая строка)
  syscall            ; выводим строку

  mov rax, 60        ; 60 = syscall номер для выхода
  xor rdi, rdi       ; 0 = код выхода
  syscall            ; завершаем программу
