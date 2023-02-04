section	.text
	global	_ft_islower

_ft_islower:
	MOV	rax, 0
	MOV	rcx, 0
	CMP	edi, 0x61
	SETAE	al
	CMP	edi, 0x7a
	SETBE	cl
	AND	al, cl
	RET
