/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   utils.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cchen <cchen@student.hive.fi>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/24 13:35:23 by cchen             #+#    #+#             */
/*   Updated: 2022/11/24 13:50:06 by cchen            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>
#include <stdio.h>
#include <fcntl.h>
#include <stdlib.h>

void	init_redirect(int *fd, int *cpy_out)
{
	*fd = open("temp", O_RDWR|O_CREAT|O_TRUNC, 0666);
	if (*fd == -1)
	{
		printf("ERROR: Could not open temp file.\n");
		exit(1);
	}
	*cpy_out = dup(fileno(stdout));
	dup2(*fd, fileno(stdout));
}

void	reset_output(int *cpy_out)
{
	dup2(*cpy_out, fileno(stdout));
	close(*cpy_out);
}

void	fr_clean_up(FILE *file, char *res)
{
	if (fclose(file))
	{
		fprintf(stderr, "Cannot close temp file\n");
		exit (1);
	}
	if (remove("temp"))
	{
		fprintf(stderr, "Cannot remove temp file\n");
		exit (1);
	}
	free(res);
}
