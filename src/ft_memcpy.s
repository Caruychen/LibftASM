section	.text
	global	_ft_memcpy

_ft_memcpy:
__guard:
	mov	rax, rdi
	test	rdx, rdx	; if (n == 0) { return }
	jz	end
	test	rdi, rdi	; if (dst == NULL) { return }
	jz	end
	test	rsi, rsi	; if (src == NULL) { return }
	jz	end
	cmp	rdi, rsi	; if (dst == src) { return }
	je	end
	mov	rbx, 0		; index = 0;

while:
	cmp	rbx, rdx	; while ( index < n )
	jae	end
	mov	r8, rdx		; if ( n - index > 8 ) { copy 64bits at a time }
	sub	r8, rbx
	cmp	r8, 8
	jb	small_cpy

large_cpy:
	mov	rcx, QWORD [rsi + rbx]
	mov	QWORD [rdi + rbx], rcx
	add	rbx, 8
	jmp	while

small_cpy:
	mov	cl, BYTE [rsi + rbx]
	mov	BYTE [rdi + rbx], cl
	inc	rbx
	jmp	while

end:
	ret
