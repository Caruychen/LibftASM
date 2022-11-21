section	.text
	global	_ft_bzero

_ft_bzero:
	mov	rax, 0					; i = 0

while:							; while (i < n)
	cmp	rax, rsi
	jae	end

set_zero:
	mov	BYTE [rdi + rax], 0
	inc	rax
	jmp	while

end:
	ret
