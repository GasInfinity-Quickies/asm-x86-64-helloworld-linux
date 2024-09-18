BITS 64
; Ty, https://blog.rchapman.org/posts/Linux_System_Call_Table_for_x86_64/

SYS_WRITE equ 1
SYS_EXIT equ 60

FD_STDOUT equ 1

global _start
_start:
	mov rdi, FD_STDOUT 
	mov rsi, hello_world
	mov rdx, hello_world_length
	mov rax, SYS_WRITE
	syscall
	xor rsi, rsi
	mov rax, SYS_EXIT
	syscall

hello_world: db "Hello World from x86_64 assembly", 10
hello_world_length equ $ - hello_world
