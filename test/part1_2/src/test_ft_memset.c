/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test_ft_memset.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cchen <cchen@student.hive.fi>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/24 15:39:59 by cchen             #+#    #+#             */
/*   Updated: 2022/11/24 15:40:00 by cchen            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libfts.h"
#include <limits.h>
#include <assert.h>
#include <string.h>
#include <stdio.h>

static void	init_str(char **str, size_t size)
{
	*str = (char *) malloc(sizeof(char) * size);
	bzero(*str, size);
}

static void	cycle_ints(char *control, char *test, size_t index, size_t size)
{
	int	c;

	c = SHRT_MIN;
	while (c <= SHRT_MAX)
	{
		memset(control, c, index);
		ft_memset(test, c, index);
		assert(memcmp(control, test, size) == 0);
		++c;
	}
}

static void	run_test(char *control, char *test, size_t size)
{
	size_t	index;

	index = 0;
	while (index < size)
	{
		bzero(control, size);
		bzero(test, size);
		cycle_ints(control, test, index++, size);
	}
}

void	test_ft_memset(void)
{
	char	*control;
	char	*test;
	size_t	size;

	printf("ft_memset: ");
	size = 42;
	init_str(&control, size);
	init_str(&test, size);
	run_test(control, test, size);
	free(control);
	free(test);
	printf("OK\n");
}
