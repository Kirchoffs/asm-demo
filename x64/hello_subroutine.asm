section .data
    msg db "Hello World!", 0x0A ; db = data bytes / define bytes, 0x0A = \n
                                ; msg db "Hello World!", 10

section .text
    global _start
_start:
    call print_hello

    mov rax, 60
    mov rdi, 0
    syscall

print_hello:
    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, 14
    syscall
    ret