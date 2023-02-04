section	.text
	global	_ft_isdigit

_ft_isdigit:
	MOV	rax, 0
	MOV	rcx, 0
	CMP	edi, 0x30
	SETAE	al
	CMP	edi, 0x39
	SETBE	cl
	AND	al, cl
	RET
