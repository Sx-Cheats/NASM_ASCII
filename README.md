# NASM_ASCII
NASM (Netwide Assembler)  Get Ascii character (32-127)

Linux compile :
  nasm -f elf64 nasm_ascii.asm && ld ./nasm_ascii.o -o asm_asciitable.o && ./asm_asciitable.o && rm ./nasm_ascii.o
