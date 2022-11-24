section	.text
	global	_ft_isalnum

extern	_ft_isalpha
extern	_ft_isdigit

_ft_isalnum:
	CALL	_ft_isalpha
	JNE		end
	CALL	_ft_isdigit

end:
	RET
