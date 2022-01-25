section .data
CODE db "section .data%3$cCODE db %4$c%1$s%4$c, 0%3$cSECURITY db %4$cSully_5.s%4$c, 0%3$cPROG_NAME db %4$c./Sully_%2$d%4$c, 0%3$cNAME db %4$cSully_%2$d.s%4$c, 0%3$cOPTION_CREATE db %4$cw%4$c, 0%3$cSILVIO db %4$cnasm -f macho64 Sully_%2$d.s;gcc Sully_%2$d.o -o Sully_%2$d;rm Sully_%2$d.o;./Sully_%2$d%4$c, 0%3$cINTERO dq %2$d%3$c%3$csection .text%3$cglobal _main%3$cextern _access%3$cextern _fopen%3$cextern _fprintf%3$cextern _system%3$cextern _fclose%3$c%3$c_main:%3$center 0, 0%3$ccmp qword[rel INTERO], 0%3$cjl _exit%3$cxor rax, rax%3$clea rdi, [rel SECURITY]%3$cmov rsi, 0%3$ccall _access%3$ccmp rax, -1%3$cjne _minus%3$c_continue:%3$cxor rax, rax%3$clea rdi, [rel NAME]%3$clea rsi, [rel OPTION_CREATE]%3$ccall _fopen%3$cpush rax%3$cmov rdi, rax%3$clea rsi, [rel CODE]%3$clea rdx, [rel CODE]%3$cmov rcx, qword[rel INTERO]%3$cmov r8, 10%3$cmov r9, 34%3$cpush r8%3$cpush r9%3$cpush r8%3$ccall _fprintf%3$cpop r8%3$cpop r8%3$cpop r8%3$cpop rdi%3$ccall _fclose%3$ccmp qword[rel INTERO], 0%3$cjge _eseguzione%3$cjmp _exit%3$c%3$c_eseguzione:%3$clea rdi, [rel SILVIO]%3$ccall _system%3$cjmp _exit%3$c%3$c_minus:%3$csub qword[rel INTERO], 1%3$cjmp _continue%3$c%3$c_exit:%3$cleave%3$cret", 0
SECURITY db "Sully_5.s", 0
PROG_NAME db "./Sully_5", 0
NAME db "Sully_5.s", 0
OPTION_CREATE db "w", 0
SILVIO db "nasm -f macho64 Sully_5.s;gcc Sully_5.o -o Sully_5;rm Sully_5.o;./Sully_5", 0
INTERO dq 5

section .text
global _main
extern _access
extern _fopen
extern _fprintf
extern _system
extern _fclose

_main:
enter 0, 0
cmp qword[rel INTERO], 0
jl _exit
xor rax, rax
lea rdi, [rel SECURITY]
mov rsi, 0
call _access
cmp rax, -1
jne _minus
_continue:
xor rax, rax
lea rdi, [rel NAME]
lea rsi, [rel OPTION_CREATE]
call _fopen
push rax
mov rdi, rax
lea rsi, [rel CODE]
lea rdx, [rel CODE]
mov rcx, qword[rel INTERO]
mov r8, 10
mov r9, 34
push r8
push r9
push r8
call _fprintf
pop r8
pop r8
pop r8
pop rdi
call _fclose
cmp qword[rel INTERO], 0
jge _eseguzione
jmp _exit

_eseguzione:
lea rdi, [rel SILVIO]
call _system
jmp _exit

_minus:
sub qword[rel INTERO], 1
jmp _continue

_exit:
leave
ret
