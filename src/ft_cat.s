%define	MACH_SYSCALL(nb)	0x2000000 | nb
%define	STDOUT			1
%define	READ			3
%define	WRITE			4
%define	BUFFSIZE		0x1000
%define NEWLINE			10

section	.data
error:
	.nofile	db "No such file or directory", 0
	.read db "Could not read file", 0
	.write db "Could not write to file", 0

section	.text
	global _ft_cat

extern	_ft_puts

_ft_cat:
	PUSH	rbp
	MOV		rbp, rsp
	SUB		rsp, BUFFSIZE
	MOV		rsi, rsp

check_fd:
	MOV		ebx, edi
	CMP		edi, 0
	JNL		read_fd
	LEA		rdi, [rel error.nofile]
	CALL	_ft_puts
	JMP		end

read_error:
	LEA		rdi, [rel error.read]
	CALL	_ft_puts
	JMP		end

write_error:
	LEA		rdi, [rel error.write]
	CALL	_ft_puts
	JMP		end

read_fd:
	MOV		edi, ebx
	MOV		rdx, BUFFSIZE
	MOV		rax, MACH_SYSCALL(READ)
	SYSCALL
	TEST	rax, rax
	JZ		end
	JS		read_error

write_stdout:
	MOV		edi, STDOUT
	MOV		rdx, rax
	MOV		rax, MACH_SYSCALL(WRITE)
	SYSCALL
	TEST	rax, rax
	JS		write_error
	JMP		read_fd

end:
	LEAVE
	RET
