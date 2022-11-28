/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test_ft_to.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cchen <cchen@student.hive.fi>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/22 16:20:04 by cchen             #+#    #+#             */
/*   Updated: 2022/11/22 16:20:09 by cchen            ###   ########.fr       */
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
	printf("ft_toupper, to_lower: ");
	while (index < USHRT_MAX)
	{
		assert(toupper(array[index]) == ft_toupper(array[index]));
		assert(tolower(array[index]) == ft_tolower(array[index]));
		++index;
	}
	printf("OK\n");
}

void	test_ft_to(void)
{
	int	*array;

	array = NULL;
	init(&array);
	run_test(array);
	free(array);
}
