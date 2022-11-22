section	.text
	global	_ft_isdigit

_ft_isdigit:
	cmp		rdi, 0x30
	setae	al
	cmp		rdi, 0x39
	setbe	bl
	and		al, bl
	ret
