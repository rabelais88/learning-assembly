nasm -f elf32 -o $1.o $1.s
ld -e _main -melf_i386 -o $1 $1.o