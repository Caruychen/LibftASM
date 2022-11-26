/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test_ft_strdup.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cchen <cchen@student.hive.fi>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/21 13:01:20 by cchen             #+#    #+#             */
/*   Updated: 2022/11/21 13:01:22 by cchen            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libfts.h"
#include <string.h>
#include <assert.h>
#include <stdio.h>

static void	run_test(const char *str)
{
	char	*test;
	size_t	len;
	size_t	test_len;

	len = strlen(str);
	test = strdup(str);
	test_len  = strlen(test);
	assert(str != test);
	assert(memcmp(str, test, len) == 0);
	assert(len == test_len);
	free(test);
}

void	test_ft_strdup(void)
{

	printf("ft_strdup: ");
	run_test("Hello World");
	run_test("x");
	run_test("\0");
	run_test("1\0 2\0");
	run_test("");
	printf("OK\n");
}
