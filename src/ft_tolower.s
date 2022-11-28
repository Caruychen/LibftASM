section	.text
	global	_ft_tolower

extern	_ft_isupper

_ft_tolower:
	CALL	_ft_isupper
	MOV		eax, edi
	JE		end
	ADD		eax, 0x20

end:
	RET
