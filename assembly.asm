; 41 - Assembly x86 - Bare Metal Micro-Core
section .data
    msg db "Assembly x86: Bare Metal Micro-Core online.", 10
    len equ $ - msg
section .text
    global _start
_start:
    mov rax, 1          ; sys_write
    mov rdi, 1          ; stdout
    mov rsi, msg
    mov rdx, len
    syscall
    mov rax, 60         ; sys_exit
    xor rdi, rdi
    syscall
