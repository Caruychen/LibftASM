section	.text
	global	_ft_strlen

_ft_strlen:
	mov	rax, 0

compare:
	cmp	BYTE [rdi + rax], 0
	je	end

increment:
	inc	rax
	jmp	compare

end:
	ret
