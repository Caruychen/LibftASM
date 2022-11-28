section	.text
	global	_ft_islower

_ft_islower:
	CMP		edi, 0x61
	SETAE	al
	CMP		edi, 0x7a
	SETBE	bl
	AND		rax, rbx
	RET
