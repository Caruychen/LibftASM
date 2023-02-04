section	.text
	global	_ft_isprint

_ft_isprint:
	MOV	rax, 0
	MOV	rcx, 0
	CMP	edi, 0x20
	SETAE	al
	CMP	edi, 0x7e
	SETBE	cl
	AND	al, cl
	RET
