section	.text
	global	_ft_isascii

_ft_isascii:
	CMP		rdi, 0x00
	SETAE	al
	CMP		rdi, 0x7f
	SETBE	bl
	AND		rax, rbx
	RET
