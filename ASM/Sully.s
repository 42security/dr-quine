section .data
CODE db "section .data%3$cCODE db %4$c%1$s%4$c, 0%3$cSECURITY db %4$cSully_5.s%4$c, 0%3$cPROG_NAME db %4$cSully_%%d%4$c, 0%3$cB_PROG_NAME db 8 dup (1)%3$cOBJ_NAME db %4$cSully_%%d.o%4$c, 0%3$cB_OBJ_NAME db 10 dup (1)%3$cNAME db %4$cSully_%%d.s%4$c, 0%3$cB_NAME db 10 dup (1)%3$cOPTION_CREATE db %4$cw%4$c, 0%3$cCMD db %4$cnasm -f macho64 %%s%4$c, 0%3$cCMD2 db %4$cgcc %%s -o %%s%4$c, 0%3$cCMD3 db %4$crm %%s%4$c, 0%3$cCMD4 db %4$c./%%s%4$c, 0%3$cTMP db 150 dup (0)%3$cINTERO dq %2$d%3$c%3$csection .text%3$cglobal _main%3$cextern _access%3$cextern _fopen%3$cextern _sprintf%3$cextern _fprintf%3$cextern _system%3$cextern _fclose%3$c%3$c_main:%3$center 0, 0%3$ccmp qword[rel INTERO], 0%3$cjl _exit%3$cxor rax, rax%3$clea rdi, [rel SECURITY]%3$cmov rsi, 0%3$ccall _access%3$ccmp rax, -1%3$cjne _minus%3$c_continue:%3$clea rdi, [rel B_PROG_NAME]%3$clea rsi, [rel PROG_NAME]%3$cmov rdx, qword[rel INTERO]%3$ccall _sprintf%3$clea rdi, [rel B_NAME]%3$clea rsi, [rel NAME]%3$cmov rdx, qword[rel INTERO]%3$ccall _sprintf%3$clea rdi, [rel B_OBJ_NAME]%3$clea rsi, [rel OBJ_NAME]%3$cmov rdx, qword[rel INTERO]%3$ccall _sprintf%3$cxor rax, rax%3$clea rdi, [rel B_NAME]%3$clea rsi, [rel OPTION_CREATE]%3$ccall _fopen%3$cpush rax%3$cmov rdi, rax%3$clea rsi, [rel CODE]%3$clea rdx, [rel CODE]%3$cmov rcx, qword[rel INTERO]%3$cmov r8, 10%3$cmov r9, 34%3$cpush r8%3$cpush r9%3$cpush r8%3$ccall _fprintf%3$cpop r8%3$cpop r8%3$cpop r8%3$cpop rdi%3$ccall _fclose%3$ccmp qword[rel INTERO], 0%3$cjge _eseguzione%3$cjmp _exit%3$c%3$c_eseguzione:%3$clea rdi, [rel TMP]%3$clea rsi, [rel CMD]%3$clea rdx, [rel B_NAME]%3$ccall _sprintf%3$clea rdi, [rel TMP]%3$ccall _system%3$clea rdi, [rel TMP]%3$clea rsi, [rel CMD2]%3$clea rdx, [rel B_OBJ_NAME]%3$clea rcx, [rel B_PROG_NAME]%3$ccall _sprintf%3$clea rdi, [rel TMP]%3$ccall _system%3$clea rdi, [rel TMP]%3$clea rsi, [rel CMD3]%3$clea rdx, [rel B_OBJ_NAME]%3$ccall _sprintf%3$clea rdi, [rel TMP]%3$ccall _system%3$clea rdi, [rel TMP]%3$clea rsi, [rel CMD4]%3$clea rdx, [rel B_PROG_NAME]%3$ccall _sprintf%3$clea rdi, [rel TMP]%3$ccall _system%3$cjmp _exit%3$c%3$c_minus:%3$csub qword[rel INTERO], 1%3$cjmp _continue%3$c%3$c_exit:%3$cleave%3$cret", 0
SECURITY db "Sully_5.s", 0
PROG_NAME db "Sully_%d", 0
B_PROG_NAME db 8 dup (1)
OBJ_NAME db "Sully_%d.o", 0
B_OBJ_NAME db 10 dup (1)
NAME db "Sully_%d.s", 0
B_NAME db 10 dup (1)
OPTION_CREATE db "w", 0
CMD db "nasm -f macho64 %s", 0
CMD2 db "gcc %s -o %s", 0
CMD3 db "rm %s", 0
CMD4 db "./%s", 0
TMP db 150 dup (0)
INTERO dq 5

section .text
global _main
extern _access
extern _fopen
extern _sprintf
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
lea rdi, [rel B_PROG_NAME]
lea rsi, [rel PROG_NAME]
mov rdx, qword[rel INTERO]
call _sprintf
lea rdi, [rel B_NAME]
lea rsi, [rel NAME]
mov rdx, qword[rel INTERO]
call _sprintf
lea rdi, [rel B_OBJ_NAME]
lea rsi, [rel OBJ_NAME]
mov rdx, qword[rel INTERO]
call _sprintf
xor rax, rax
lea rdi, [rel B_NAME]
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
lea rdi, [rel TMP]
lea rsi, [rel CMD]
lea rdx, [rel B_NAME]
call _sprintf
lea rdi, [rel TMP]
call _system
lea rdi, [rel TMP]
lea rsi, [rel CMD2]
lea rdx, [rel B_OBJ_NAME]
lea rcx, [rel B_PROG_NAME]
call _sprintf
lea rdi, [rel TMP]
call _system
lea rdi, [rel TMP]
lea rsi, [rel CMD3]
lea rdx, [rel B_OBJ_NAME]
call _sprintf
lea rdi, [rel TMP]
call _system
lea rdi, [rel TMP]
lea rsi, [rel CMD4]
lea rdx, [rel B_PROG_NAME]
call _sprintf
lea rdi, [rel TMP]
call _system
jmp _exit

_minus:
sub qword[rel INTERO], 1
jmp _continue

_exit:
leave
ret