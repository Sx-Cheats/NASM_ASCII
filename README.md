# NASM_ASCII
NASM (Netwide Assembler, 64b)  Get Ascii character (32-127)

Linux compile to executable link format :
  nasm -f elf64 nasm_ascii.asm && ld ./nasm_ascii.o -o asm_asciitable.o && ./asm_asciitable.o && rm ./nasm_ascii.o
