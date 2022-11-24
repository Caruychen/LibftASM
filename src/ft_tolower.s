section	.text
	global	_ft_tolower

extern	_ft_isupper

_ft_tolower:
	CALL	_ft_isupper
	MOV		rax, rdi
	JE		end
	ADD		rax, 0x20

end:
	RET
