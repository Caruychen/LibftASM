/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_puts.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cchen <cchen@student.hive.fi>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/21 13:01:20 by cchen             #+#    #+#             */
/*   Updated: 2022/11/21 13:01:22 by cchen            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libfts.h"
#include <stdio.h>

void	run_test(char *str)
{
	int	res;

	res = puts(str);
	printf("res: %d\n", res);
	res = ft_puts(str);
	printf("res: %d\n", res);
}

void	test_ft_puts(void)
{
	char	*s1;
	char	*s2;
	char	*s3;
	char	*s4;
	char	*s5;

	s1 = "Hello World";
	s2 = "";
	s3 = "\0";
	s4 = "\n";
	s5 = "x";
	run_test(s1);
	run_test(s2);
	run_test(s3);
	run_test(s4);
	run_test(s5);
	run_test(NULL);
}
