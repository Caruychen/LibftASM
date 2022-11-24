section	.text
	global	_ft_toupper

extern	_ft_islower

_ft_toupper:
	CALL	_ft_islower
	MOV		rax, rdi
	JE		end
	SUB		rax, 0x20

end:
	RET
