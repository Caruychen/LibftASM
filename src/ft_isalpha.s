section	.text
	global	_ft_isalpha

extern	_ft_isupper
extern	_ft_islower

_ft_isalpha:
	call	_ft_isupper
	jne		end
	call	_ft_islower

end:
	ret
