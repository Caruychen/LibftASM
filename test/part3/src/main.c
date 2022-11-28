/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cchen <cchen@student.hive.fi>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/28 13:33:39 by cchen             #+#    #+#             */
/*   Updated: 2022/11/28 13:33:43 by cchen            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "test.h"

void	read_stdin(void)
{
	ft_cat(0);
	exit(0);
}

void	test_file(const char *filename)
{
	int	fd;

	fd = open(filename, O_RDONLY);
	if (fd == -1)
		exit(1);
	if (close(fd) == -1)
		exit(1);
}

int	main(int argc, char **argv)
{
	int	fd;

	if (argc < 2)
		read_stdin();
	test_file(argv[1]);
}
