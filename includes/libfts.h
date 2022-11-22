/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cchen <cchen@student.hive.fi>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/21 13:49:19 by cchen             #+#    #+#             */
/*   Updated: 2022/11/21 13:49:23 by cchen            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTS_H
# define LIBFTS_H

# include <stdlib.h>

void	ft_bzero(void *s, size_t n);
int		ft_isupper(int c);
int		ft_islower(int c);
int		ft_isalpha(int c);
size_t	ft_strlen(const char *s);

#endif
