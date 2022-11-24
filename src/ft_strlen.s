section	.text
	global	_ft_strlen

_ft_strlen:
	mov		rax, 0				; Set search for '\0'
	mov		rbx, rdi			; Store pointer to string
	cmp		rdi, 0				; Return 0 if NULL pointer given
	je		end

repeat_scan:
	mov		ecx, 0xffffffff		; repnz uses cx to count loop
	cld							; clear direction flag, to scan forward
	repnz	scasb				; repeat scan until cx == 0 or zf == 0
	jnz		repeat_scan			; loop again if '\0' not found

return_result:
	mov		rax, rdi
	sub		rax, rbx
	dec		rax					; end ptr [rdi] - start ptr [rbx] + 1
	mov		rdi, rbx			; restore rdi

end:
	ret
