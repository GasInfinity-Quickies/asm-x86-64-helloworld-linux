# A build system for this is a bit overkill :skull:
mkdir -p out
nasm -f elf64 hello.asm -o out/hello.o
ld -o out/hello.x86_64 out/hello.o
