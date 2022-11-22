section	.text
	global	_ft_isascii

_ft_isascii:
	cmp		rdi, 0x00
	setae	al
	cmp		rdi, 0x7f
	setbe	bl
	and		al, bl
	ret
