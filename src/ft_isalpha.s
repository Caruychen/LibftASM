section	.text
	global	_ft_isalpha

extern	_ft_isupper
extern	_ft_islower

_ft_isalpha:
	CALL	_ft_isupper
	JNE		end
	CALL	_ft_islower

end:
	RET
