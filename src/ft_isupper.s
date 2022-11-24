section	.text
	global	_ft_isupper

_ft_isupper:
	CMP		rdi, 0x41
	SETAE	al
	CMP		rdi, 0x5a
	SETBE	bl
	AND		rax, rbx
	RET
