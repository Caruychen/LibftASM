section	.text
	global	_ft_isdigit

_ft_isdigit:
	CMP		edi, 0x30
	SETAE	al
	CMP		edi, 0x39
	SETBE	bl
	AND		rax, rbx
	RET
