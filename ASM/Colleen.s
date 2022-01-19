;comment

section .rodata
code db ";comment%1$c%1$csection .rodata%1$ccode db %2$c%3$s%2$c, 0%1$c%1$csection .text%1$cglobal _main%1$cextern _printf%1$c%1$c_main:%1$cpush rbp ;comment%1$cmov rbp, rsp%1$clea rdi, [rel code]%1$clea rcx, [rel code]%1$cmov rsi, 10%1$cmov rdx, 34%1$cxor rax, rax%1$ccall _printf%1$cxor rax, rax%1$cpop rbp%1$ccall _function%1$c%1$c_function:%1$cret", 0

section .text
global _main
extern _printf

_main:
push rbp ;comment
mov rbp, rsp
lea rdi, [rel code]
lea rcx, [rel code]
mov rsi, 10
mov rdx, 34
xor rax, rax
call _printf
xor rax, rax
pop rbp
call _function

_function:
ret