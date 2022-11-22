section	.text
	global	_ft_islower

_ft_islower:
	cmp		rdi, 0x61
	setae	al
	cmp		rdi, 0x7a
	setbe	bl
	and		al, bl
	ret
