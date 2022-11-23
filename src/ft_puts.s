section	.data
null:
	.string	db "(null)", 0

section	.text
	global _ft_puts

extern	write

_ft_puts:
	push	rbp
	mov	rbp, rsp
	inc	rdx
	sub	rsp, rdx
	ret
