section	.text
	global	_ft_toupper

extern	_ft_islower

_ft_toupper:
	CALL	_ft_islower
	MOV		eax, edi
	JE		end
	SUB		eax, 0x20

end:
	RET
