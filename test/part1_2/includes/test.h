/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.h                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cchen <cchen@student.hive.fi>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/21 13:46:17 by cchen             #+#    #+#             */
/*   Updated: 2022/11/24 13:48:29 by cchen            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef TEST_H
# define TEST_H

# include <stdio.h>

/* Utilities */
void	init_redirect(int *fd, int *cpy_out);
void	reset_output(int *cpy_out);
void	fr_clean_up(FILE *file, char *res);

void	test_ft_bzero(void);
void	test_ft_is(void);
void	test_ft_to(void);
void	test_ft_puts(void);
void	test_ft_strlen(void);
void	test_ft_memcpy(void);
void	test_ft_memset(void);
void	test_ft_strdup(void);

#endif
