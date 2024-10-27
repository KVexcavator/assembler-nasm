#makefile for hello.asm
hello: hello.o
	gcc -m64 hello.o -o hello -no-pie

hello.o: hello.asm
	nasm -f elf64 hello.asm -o hello.o