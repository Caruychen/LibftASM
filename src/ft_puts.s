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
	push	rbp
	mov	rbp, rsp

null_guard:
	cmp	rdi, 0
	jne	put_str

write_null_stdout:
	lea	rsi, [rel null.string]
	mov	rdx, null.len
	jmp	write_stdout

put_str:
__get_length:
	call	_ft_strlen
	push	NEWLINE
	sub	rsp, rax
__cpy_str:
	mov	rsi, rdi
	mov	rdi, rsp
	mov	rdx, rax
	call	_ft_memcpy
__set_params:
	mov	rsi, rsp
	inc	rdx

write_stdout:
	mov	rdi, STDOUT
	mov	rax, MACH_SYSCALL(WRITE)
	syscall

end:
	leave
	ret
