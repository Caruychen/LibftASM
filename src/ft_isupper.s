# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cchen <cchen@student.hive.fi>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/22 15:08:12 by cchen             #+#    #+#              #
#    Updated: 2022/11/22 15:08:28 by cchen            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section	.text
	global	_ft_isupper

_ft_isupper:
	cmp		rdi, 0x41
	setae	al
	cmp		rdi, 0x5a
	setbe	bl
	and		al, bl
	ret
