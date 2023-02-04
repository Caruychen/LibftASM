section	.text
	global	_ft_isupper

_ft_isupper:
	MOV	rax, 0
	MOV	rcx, 0
	CMP	edi, 0x41
	SETAE	al
	CMP	edi, 0x5a
	SETBE	cl
	AND	al, cl
	RET
