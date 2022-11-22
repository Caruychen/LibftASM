section	.text
	global	_ft_tolower

extern	_ft_isupper

_ft_tolower:
	call	_ft_isupper
	mov		rax, rdi
	je		end
	add		rax, 0x20

end:
	ret
