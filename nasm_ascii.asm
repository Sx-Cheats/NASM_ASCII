section .bss
   _testt resb 4 ;Reserve 4 Bytes in memory (32 bits, max value : 2**32)
 
section .text
    global _start
 
_start:
    xor rbx, rbx
    mov rbx,32
    mov [_testt], rbx
    jmp _loop

_loop:
    cmp rbx, 127 ; compare rbx to 127 (max char in ascii)
    jae _exit ; >=
    mov [_testt],rbx ; copie rbx to _testt, [] -> ref to address _testt
    inc rbx ;increment rbx, rbx+1
    jmp _print ;call _print
   
 
_print:
    mov rdi, 1 ; output
    mov rsi, _testt ;set const char* to rsi
    mov rdx, 4 ; set size of char (_testt)
    mov rax, 1 ; call sys_write
    syscall  ;call kernel 
    call _loop ; call _loop 
 
_exit:
mov	rax, 60 ;call sys_exit
mov rdi, 0 ; no output
syscall  ; call kernel 
