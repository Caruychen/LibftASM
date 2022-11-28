section	.text
	global	_ft_isascii

_ft_isascii:
	CMP		edi, 0x00
	SETAE	al
	CMP		edi, 0x7f
	SETBE	bl
	AND		rax, rbx
	RET
