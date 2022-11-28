%define	MACH_SYSCALL(nb)	0x2000000 | nb
%define	STDOUT			1
%define	READ			3
%define	WRITE			4
%define	BUFFSIZE		0x1000
%define NEWLINE			10

section	.data
error:
	.string	db "No such file or directory", NEWLINE
	.len	equ $ - error.string

section	.text
	global _ft_cat

_ft_cat:
	PUSH	rbp
	MOV		rbp, rsp
	SUB		rsp, BUFFSIZE
	MOV		rsi, rsp
	MOV		rbx, rdi

read_fd:
	MOV		rdi, rbx
	MOV		rdx, BUFFSIZE
	MOV		rax, MACH_SYSCALL(READ)
	SYSCALL
	TEST	rax, rax
	JZ		end

write_stdout:
	MOV		rdi, STDOUT
	MOV		rdx, rax
	MOV		rax, MACH_SYSCALL(WRITE)
	SYSCALL
	JMP		read_fd

end:
	LEAVE
	RET
