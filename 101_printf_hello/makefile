printf_hello: printf_hello.o
	gcc -o printf_hello printf_hello.o -no-pie
printf_hello.o: printf_hello.asm
	nasm -f elf64 -g -F dwarf printf_hello.asm -l printf_hello.lst
