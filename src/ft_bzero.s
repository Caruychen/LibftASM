# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_bzero.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cchen <cchen@student.hive.fi>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/22 15:08:10 by cchen             #+#    #+#              #
#    Updated: 2022/11/22 15:08:17 by cchen            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section	.text
	global	_ft_bzero

_ft_bzero:
	mov	rax, 0					; i = 0

null_guard:						; if (*s == NULL) { return }
	cmp	rdi, 0
	je	end

while:							; while (i < n)
	cmp	rax, rsi
	jae	end
	mov	rbx, rsi				; if (i >= 8) ( bzero 1 byte at a time)
	sub	rbx, rax
	cmp	rbx, 8
	jb	set_zero

large_bzero:						; bzero in 64bits
	mov	QWORD [rdi + rax], 0
	add	rax, 8
	jmp	while

set_zero:
	mov	BYTE [rdi + rax], 0
	inc	rax
	jmp	while

end:
	ret
