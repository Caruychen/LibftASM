# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cchen <cchen@student.hive.fi>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/22 15:08:14 by cchen             #+#    #+#              #
#    Updated: 2022/11/22 15:08:28 by cchen            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

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
