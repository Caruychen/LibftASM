section	.text
	global	_ft_isprint

_ft_isprint:
	cmp		rdi, 0x20
	setae	al
	cmp		rdi, 0x7e
	setbe	bl
	and		rax, rbx
	ret
