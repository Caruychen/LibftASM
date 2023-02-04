section	.text
	global	_ft_isascii

_ft_isascii:
	MOV	rax, 0
	MOV	rcx, 0
	CMP	edi, 0x00
	SETAE	al
	CMP	edi, 0x7f
	SETBE	cl
	AND	al, cl
	RET
