section .data
  msg db  "hello, world",0
  NL  db  0x0A  ; Добавляем символ новой строки в конец (ASCII)
section .bss
section .text
  global main
main:
  mov rax, 1         ; 1 = запись
  mov rdi, 1         ; 1 = в устройство стандартного вывода stdout
  mov rsi, msg       ; вывводимая строка
  mov rdx, 12        ; длина строки без завершающего 0
  syscall            ; выводим строку
  mov rax, 1         ; 1 = запись
  mov rdi, 1         ; 1 = в устройство стандартного вывода stdout
  mov rsi, NL        ; вывод символа перехода на новую строку
  mov rdx, 1         ; длина строки
  syscall            ; вывод строки
  mov rax, 60        ; 60 = выход
  mov rdi, 0         ; 0 = код выхода
  syscall            ; выход из программы
