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

## Knoledge
### System Call
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

### Math Operation
| Opeartion Name    | Operation Name (signed) | Description     |
| ----------------- | ----------------------- | --------------- |
| add a, b          | -                       | a = a + b       |
| mul reg           | imul reg                | rax = rax * reg |
| div reg           | idiv reg                | rax = rax / reg |
| adc a, b          | -                       | a = a + b + CF  |
| sbb a, b          | -                       | a = a - b - CF  |

### Stack
| Operation      | Effect                                        |
| -------------- | --------------------------------------------- |
| push reg/value | push a value onto the stack                   |
| pop reg        | pop a value off the stack and store it in reg |
| mov reg, [rsp] | store the peek value in reg                   |