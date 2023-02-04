section	.text
	global	_ft_strlen

_ft_strlen:
	PUSH	rbx
	MOV	rax, 0			; Set search for '\0'
	MOV	rbx, rdi		; Store pointer to string
	CMP	rdi, 0			; Return 0 if NULL pointer given
	JE	end

repeat_scan:
	MOV	ecx, 0xffffffff		; repnz uses cx to count loop
	CLD				; clear direction flag, to scan forward
	REPNZ	scasb			; repeat scan until cx == 0 or zf == 0
	JNZ	repeat_scan		; loop again if '\0' not found

return_result:
	MOV	rax, rdi
	SUB	rax, rbx
	DEC	rax			; end ptr [rdi] - start ptr [rbx] + 1
	MOV	rdi, rbx		; restore rdi

end:
	POP	rbx
	RET
