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

#include "test.h"
#include "libfts.h"
#include <assert.h>
#include <string.h>

static void	compare_output(const char *str, const int fd)
{
	FILE	*file;
	char	*res;
	size_t	length;

	if (!str)
		str = "(null)";
	length = ft_strlen(str) + 2;
	res = (char *)malloc(sizeof(*res) * length);
	file = fdopen(fd, "r");
	rewind(file);
	getdelim(&res, &length, 0, file);
	assert(memcmp(str, res, length - 2) == 0);
	assert(res[length - 2] == '\n');
	fr_clean_up(file, res);
}

static void	run_test(const char *str)
{
	int	fd;
	int	cpy_out;
	int	ret;

	init_redirect(&fd, &cpy_out);
	ret = ft_puts(str);
	reset_output(&cpy_out);
	assert(ret >= 0);
	compare_output(str, fd);
}

void	test_ft_puts(void)
{
	char	*s1;
	char	*s2;
	char	*s3;
	char	*s4;
	char	*s5;

	printf("ft_puts: ");
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
	printf("OK\n");
}
