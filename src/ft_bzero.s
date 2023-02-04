section	.text
	global	_ft_bzero

_ft_bzero:
	MOV	rax, 0					; i = 0

null_guard:						; if (*s == NULL) { return }
	CMP	rdi, 0
	JE	end

while:							; while (i < n)
	CMP	rax, rsi
	JAE	end
	MOV	rcx, rsi				; if (i >= 8) ( bzero 1 byte at a time)
	SUB	rcx, rax
	CMP	rcx, 8
	JB	set_zero

large_bzero:						; bzero in 64bits
	MOV	QWORD [rdi + rax], 0
	ADD	rax, 8
	JMP	while

set_zero:
	MOV	BYTE [rdi + rax], 0
	INC	rax
	JMP	while

end:
	RET
