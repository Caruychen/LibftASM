section	.text
	global _ft_strdup

extern	_ft_strlen
extern	_ft_memcpy
extern	_malloc

_ft_strdup:
	PUSH	rdi		; Preserve source location

allocate_heap:			; Calculates src length and allocates memory
	CALL	_ft_strlen
	MOV	rdi, rax
	INC	rdi
	PUSH	rdi		; preserve string length
	CALL	_malloc

copy_string:			; calls ft_memcpy to copy string over
	POP	rdx
	POP	rsi
	MOV	rdi, rax
	CALL	_ft_memcpy
	MOV	rdi, rsi

end:
	RET
