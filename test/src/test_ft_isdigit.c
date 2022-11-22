/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test_ft_isdigit.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cchen <cchen@student.hive.fi>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/22 15:33:42 by cchen             #+#    #+#             */
/*   Updated: 2022/11/22 15:33:43 by cchen            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libfts.h"
#include <stdlib.h>
#include <limits.h>
#include <ctype.h>
#include <stdio.h>
#include <assert.h>

static void	init(int **array)
{
	unsigned int	index;

	*array = (int *) malloc(sizeof(int) * USHRT_MAX);
	if (!*array)
		exit(1);
	index = 0;
	while (index < USHRT_MAX)
	{
		(*array)[index] = index - SHRT_MAX;
		++index;
	}
}

static void	run_test(int *array)
{
	unsigned int	index;

	index = 0;
	while (index < USHRT_MAX)
	{
		assert(isdigit(array[index]) == ft_isdigit(array[index]));
		++index;
	}
	printf("ft_isdigit: OK\n");
}

void	test_ft_isdigit(void)
{
	int	*array;

	array = NULL;
	init(&array);
	run_test(array);
	free(array);
}
