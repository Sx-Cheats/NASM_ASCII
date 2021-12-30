# NASM_ASCII
NASM (Netwide Assembler)  Get Ascii character (32-127)

Linux compile :
  nasm -f elf64 ascitable.asm && ld ./ascitable.o -o asm_asciitable.o && ./asm_asciitable.o && rm ./ascitable.o
