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

void	init(char **str)
{
	*str = (char *) malloc(sizeof(char) * 12);
	memcpy(str, "Hello World", 12);
}

void	run_test(char *control, char *test, char *src, size_t size)
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
		printf("%s\n%s\n", control, test);
		++index;
	}
}

void	test_ft_memcpy(void)
{
	char	*src;
	char	control_dst[12] = {'\0'};
	char	test_dst[12] = {'\0'};
	size_t	size;

	init(&src);
	size = 12;
	run_test(control_dst, test_dst, src, size);
	free(src);
}
