section	.text
	global	_ft_isprint

_ft_isprint:
	CMP		rdi, 0x20
	SETAE	al
	CMP		rdi, 0x7e
	SETBE	bl
	AND		rax, rbx
	RET
