# asm-demo

## Prepare
On CentOS
```
>> sudo dnf --enablerepo=powertools install nasm
```

## Run
```
>> cd x64
>> nasm -f elf64 -o hello.o hello.asm
>> ld -o hello hello.o
>> ./hello
```