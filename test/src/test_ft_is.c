/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test_ft_is.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cchen <cchen@student.hive.fi>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/22 15:48:59 by cchen             #+#    #+#             */
/*   Updated: 2022/11/22 15:49:03 by cchen            ###   ########.fr       */
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

	printf("ft_isupper, ft_islower, ft_isalpha, ft_isdigit, ft_isalnum: ");
	index = 0;
	while (index < USHRT_MAX)
	{
		assert(isupper(array[index]) == ft_isupper(array[index]));
		assert(islower(array[index]) == ft_islower(array[index]));
		assert(isalpha(array[index]) == ft_isalpha(array[index]));
		assert(isdigit(array[index]) == ft_isdigit(array[index]));
		assert(isalnum(array[index]) == ft_isalnum(array[index]));
		++index;
	}
	printf("OK\n");
}

void	test_ft_is(void)
{
	int	*array;

	array = NULL;
	init(&array);
	run_test(array);
	free(array);
}
