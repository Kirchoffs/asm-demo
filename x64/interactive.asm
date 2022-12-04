section .data
    question db "What is your name? "
    greeting db "Hello, "

section .bss
    name resb 16 ; reserve 16 bytes of space

section .text
    global _start
_start:
    call print_question
    call get_name
    call print_greeting
    call print_name

    mov rax, 60
    mov rdi, 0
    syscall

print_question:
    mov rax, 1
    mov rdi, 1
    mov rsi, question
    mov rdx, 19
    syscall
    ret

get_name:
    mov rax, 0
    mov rdi, 0
    mov rsi, name
    mov rdx, 16
    syscall
    ret 

print_greeting:
    mov rax, 1
    mov rdi, 1
    mov rsi, greeting
    mov rdx, 7
    syscall
    ret

print_name:
    mov rax, 1
    mov rdi, 1
    mov rsi, name
    mov rdx, 16
    syscall
    ret       