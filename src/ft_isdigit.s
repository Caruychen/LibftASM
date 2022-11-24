section	.text
	global	_ft_isdigit

_ft_isdigit:
	CMP		rdi, 0x30
	SETAE	al
	CMP		rdi, 0x39
	SETBE	bl
	AND		rax, rbx
	RET
