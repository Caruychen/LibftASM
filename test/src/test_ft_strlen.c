/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test_ft_strlen.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cchen <cchen@student.hive.fi>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/21 13:47:49 by cchen             #+#    #+#             */
/*   Updated: 2022/11/21 13:47:50 by cchen            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libfts.h"
#include <stdio.h>
#include <string.h>

void	test_ft_strlen(void)
{
	char	*s;

	s = "Hello World";
	printf("Test: %s, strlen: %zu, ft_strlen: %zu\n",
		s, strlen(s), ft_strlen(s));
}
