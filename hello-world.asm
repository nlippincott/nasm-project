; Hello World in NASM assembly

global _start           ; expose program entry point

section .text           ; start of code segment

_start:

    ; Write "Hello World!" to the console
    mov rax,1               ; system call for write 
    mov rdi,1               ; file handle for stdout
    mov rsi,hello_str       ; address of output string
    mov rdx,hello_str_len   ; size of output string 
    syscall                 ; invoke operating system call 

    ; End the program
    mov rax,0x3c            ; system call for exit 
    xor rdi,rdi             ; exit code 0
    syscall                 ; invoke operating system call 

section .data           ; start of initialized data segment

    hello_str db "Hello World!",0xa     ; output string with newline
    hello_str_len equ $-hello_str       ; size of output string 

section .bss            ; start of uninitialized data segment 