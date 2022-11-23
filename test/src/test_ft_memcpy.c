/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test_ft_memcpy.c                                   :+:      :+:    :+:   */
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
#include <unistd.h>

static void	init(char **str, size_t size)
{
	*str = (char *) malloc(sizeof(char) * size);
	memcpy(*str, "Hello World", size);
}

static void	run_test(char *control, char *test, const char *src, size_t size)
{
	size_t	index;
	void	*c_ret;
	void	*t_ret;

	index = 0;
	while (index < size + 1)
	{
		bzero(control, size);
		bzero(test, size);
		c_ret = memcpy(control, src, index);
		t_ret = ft_memcpy(test, src, index);
		assert(memcmp(c_ret, t_ret, size) == 0);
		assert(memcmp(control, test, size) == 0);
		assert(control == c_ret && test == t_ret);
		++index;
	}
}

static void	run_test_null(char *control, char *test, const char *src, size_t size)
{
	void	*ret;

	bzero(control, size);
	bzero(test, size);
	ret = ft_memcpy(test, NULL, size);
	assert(ret == test);
	assert(memcmp(ret, test, size) == 0);
	ret = ft_memcpy(NULL, src, size);
	assert(ret == NULL);
	assert(memcmp(src, "Hello World", size) == 0);
	ret = ft_memcpy(NULL, NULL, size);
	assert(ret == NULL);
}

void	test_ft_memcpy(void)
{
	char	*src;
	char	control_dst[12] = {'\0'};
	char	test_dst[12] = {'\0'};
	size_t	size;

	size = 12;
	init(&src, size);
	run_test(control_dst, test_dst, src, size);
	run_test_null(control_dst, test_dst, src, size);
	free(src);
}
