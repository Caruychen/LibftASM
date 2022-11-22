section	.text
	global	_ft_isupper

_ft_isupper:
	cmp		rdi, 0x41
	setae	al
	cmp		rdi, 0x5a
	setbe	bl
	and		al, bl
	ret
