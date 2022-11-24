section	.text
	global	_ft_memcpy

_ft_memcpy:
guard:
	MOV		rax, rdi
	TEST	rdx, rdx	; if (n == 0) { return }
	JZ		end
	TEST	rdi, rdi	; if (dst == NULL) { return }
	JZ		end
	TEST	rsi, rsi	; if (src == NULL) { return }
	JZ		end
	CMP		rdi, rsi	; if (dst == src) { return }
	JE		end
	MOV		rbx, rsi

cpy_bytes:				; Potential to optimise to copy in QWORDs
	CLD
	MOV		rcx, rdx
	REP		MOVSB
	MOV		rdi, rax
	MOV		rsi, rbx

end:
	ret
