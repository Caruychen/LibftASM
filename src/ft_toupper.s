section	.text
	global	_ft_toupper

extern	_ft_islower

_ft_toupper:
	call	_ft_islower
	mov		rax, rdi
	je		end
	sub		rax, 0x20

end:
	ret
