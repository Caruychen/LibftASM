/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test_ft_bzero.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cchen <cchen@student.hive.fi>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/21 14:07:10 by cchen             #+#    #+#             */
/*   Updated: 2022/11/21 14:07:11 by cchen            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <assert.h>
#include <string.h>
#include <stdio.h>
#include "libfts.h"

static void	set_char(void *ptr, int index)
{
	char	*char_ptr;

	char_ptr = (char *) ptr;
	char_ptr[index] = (char) index + 1;
}

static void	set_int(void *ptr, int index)
{
	int	*int_ptr;

	int_ptr = (int *) ptr;
	int_ptr[index] = index + 0x2a2a2a00 + 1;
}

static void	init(void *control, void *test, int length, void (*fn)(void *, int))
{
	int	index;

	index = 0;
	while (index < length)
	{
		fn(control, index);
		fn(test, index);
		++index;
	}
}

static int	run_test(void *control, void *test, int length)
{
	int	index;

	index = 0;
	while (index < length)
	{
		bzero(control, index);
		ft_bzero(test, index);
		if (memcmp(control, test, length) != 0)
			return (printf("ft_bzero: KO\n"), 0);
		++index;
	}
	return (1);
}

void	test_ft_bzero(void)
{
	char	control_str[42];
	char	test_str[42];
	int		control_int[42];
	int		test_int[42];
	int		length;

	length = 42;
	init(control_str, test_str, length, &set_char);
	init(control_int, test_int, length, &set_int);
	assert(run_test(control_str, test_str, length));
	assert(run_test(control_int, test_int, length * sizeof(int)));
	ft_bzero(NULL, length);
	printf("ft_bzero: OK\n");
}
