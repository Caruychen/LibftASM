%define	MACH_SYSCALL(nb)	0x2000000 | nb
%define	STDOUT			1
%define	WRITE			4
%define NEWLINE			10

section	.data
null:
	.string	db "(null)", NEWLINE
	.len	equ $ - null.string

section	.text
	global _ft_puts

extern	_ft_strlen
extern	_ft_memcpy

_ft_puts:
	PUSH	rbp
	MOV		rbp, rsp

null_guard:
	CMP		rdi, 0
	JNE		put_str

write_null_stdout:
	LEA		rsi, [rel null.string]
	MOV		rdx, null.len
	JMP		write_stdout

put_str:
__get_length:
	CALL	_ft_strlen
	PUSH	NEWLINE
	SUB		rsp, rax
__cpy_str:
	MOV		rsi, rdi
	MOV		rdi, rsp
	MOV		rdx, rax
	CALL	_ft_memcpy
__set_params:
	MOV		rsi, rsp
	INC		rdx

write_stdout:
	MOV		rdi, STDOUT
	MOV		rax, MACH_SYSCALL(WRITE)
	SYSCALL

end:
	LEAVE
	RET
