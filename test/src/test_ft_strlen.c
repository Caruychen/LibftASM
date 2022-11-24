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
#include <assert.h>

static void	run_test(const char *s)
{
	assert(strlen(s) == ft_strlen(s));
}

void	test_ft_strlen(void)
{
	printf("ft_strlen: ");
	run_test("Hello World");
	run_test("");
	run_test("x");
	run_test("\0");
	assert(ft_strlen(NULL) == 0);
	printf("OK\n");
}
