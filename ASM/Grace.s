;comment

%macro grace 0
_main:
enter 0, 0
xor rax, rax
lea rdi, [rel file]
lea rsi, [rel op]
call _fopen
cmp rax, 0
jle %%skip
grace2 rax

%%skip:
ret
%endmacro

%macro grace2 1
mov rdi, %1
lea rsi, [rel code]
mov rdx, 10
lea rcx, [rel code]
mov r8, 34
push r8
push r8
push r8
push r8
xor rax, rax
call _fprintf
grace3 rax
%endmacro

%macro grace3 1
xor %1, %1
leave
ret
%endmacro

section .data
code db ";comment%1$c%1$c%%macro grace 0%1$c_main:%1$center 0, 0%1$cxor rax, rax%1$clea rdi, [rel file]%1$clea rsi, [rel op]%1$ccall _fopen%1$ccmp rax, 0%1$cjle %%%%skip%1$cgrace2 rax%1$c%1$c%%%%skip:%1$cret%1$c%%endmacro%1$c%1$c%%macro grace2 1%1$cmov rdi, %%1%1$clea rsi, [rel code]%1$cmov rdx, 10%1$clea rcx, [rel code]%1$cmov r8, 34%1$cpush r8%1$cpush r8%1$cpush r8%1$cpush r8%1$cxor rax, rax%1$ccall _fprintf%1$cgrace3 rax%1$c%%endmacro%1$c%1$c%%macro grace3 1%1$cxor %%1, %%1%1$cleave%1$cret%1$c%%endmacro%1$c%1$csection .data%1$ccode db %3$c%2$s%3$c, 0%1$cfile db %3$cGrace_kid.s%3$c, 0%1$cop db %3$cw%3$c, 0%1$csection .text%1$cglobal _main%1$cextern _fprintf%1$cextern _fopen%1$c%1$cstart:%1$cgrace", 0
file db "Grace_kid.s", 0
op db "w", 0
section .text
global _main
extern _fprintf
extern _fopen

start:
grace