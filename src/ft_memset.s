section	.text
	global	_ft_memset

_ft_memset:
guard:
	PUSH	rbx
	MOV	rbx, rdi
	TEST	rdi, rdi			; if (b == NULL) { return }
	JZ	end
	TEST	rdx, rdx			; if (len == 0) { return }
	JZ	end

truncate:
	MOV	rax, rsi
	AND	rax, 0xff

saturate:
	MOV	r8, rax
	MOV	rcx, 7
_loop:
	SHL	r8, 8
	ADD	rax, r8
	LOOP	_loop

count_qwords:
	MOV	rcx, rdx
	SHR	rcx, 3

set_qwords:
	REP	STOSQ

count_trail_bytes:
	MOV	rcx, rdx
	AND	rcx, 0b0000111

set_bytes:
	REP	STOSB
	MOV	rdi, rbx

end:
	MOV	rax, rbx
	POP	rbx
	RET
