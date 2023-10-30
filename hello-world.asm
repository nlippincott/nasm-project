; Hello World in NASM assembly with C Library

global main             ; expose program entry point
extern printf           ; declare external function

section .text           ; start of code segment

main:
    push rbp                ; preserve base pointer
    mov rbp,rsp             ; copy stack pointer

    ; Write "Hello World!" to the console
    mov rdi,hello_str       ; address of printf format string
    xor rax,rax             ; clear RAX for call to printf
    call printf             ; call printf (from C library)

    pop rbp                 ; restore base pointer
    xor rax,rax             ; exit status 0
    ret                     ; exit main function

section .data           ; start of initialized data segment

    hello_str db "Hello World!",0xa,0   ; null-terminated output string

section .bss            ; start of uninitialized data segment 