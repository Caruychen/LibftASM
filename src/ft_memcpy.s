section	.text
	global	_ft_memcpy

_ft_memcpy:
guard:
	PUSH	rbx
	MOV	rax, rdi
	TEST	rdx, rdx	; if (n == 0) { return }
	JZ	end
	TEST	rdi, rdi	; if (dst == NULL) { return }
	JZ	end
	TEST	rsi, rsi	; if (src == NULL) { return }
	JZ	end
	CMP	rdi, rsi	; if (dst == src) { return }
	JE	end
	MOV	rbx, rsi	; Store src pointer for later restoration

count_qwords:
	MOV	rcx, rdx
	SHR	rcx, 3

cpy_qwords:
	CLD
	REP	MOVSQ

count_trail_bytes:
	MOV	rcx, rdx
	AND	rcx, 0b0000111

cpy_bytes:
	REP	MOVSB
	MOV	rdi, rax
	MOV	rsi, rbx

end:
	POP	rbx
	RET
