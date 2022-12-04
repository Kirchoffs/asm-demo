# Notes

## Demo Explanation
`rax`: Temporary register. When we call syscall, rax should contain the ID of syscall.  
`rdi`: First parameter of the syscall.  
`rsi`: Second parameter of the syscall.  
`rdx`: Third parameter of the syscall.  

```
// C version syscall
// fd: file descriptor
// buf: character array
// count: number of characters that will be passed
size_t sys_write(unsigned int fd, const char * buf, size_t count);
```

According to linux syscall_64.tbl, the `sys_write`'s ID is 1. After we write 1 to register `rax`, we can call `sys_write`. Finally we write 60 to `rax`, the corresponding `sys_exit` will be executed.

### Knoledge
System call inputs by register:
| Argument    | Registers   |
| ----------- | ----------- |
| ID          | rax         |
| 1           | rdi         |
| 2           | rsi         |
| 3           | rdx         |
| 4           | r10         |
| 5           | r8          |
| 6           | r9          |
