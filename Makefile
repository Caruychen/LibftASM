# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cchen <cchen@student.hive.fi>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/21 13:01:27 by cchen             #+#    #+#              #
#    Updated: 2022/11/21 13:01:28 by cchen            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME :=		libfts.a

NASM :=		nasm
NFLAGS :=	-f macho64

SRC_DIR :=	src
OBJ_DIR :=	obj

SRCS :=		$(SRC_DIR)/ft_strlen.s
SRCS +=		$(SRC_DIR)/ft_bzero.s
SRCS +=		$(SRC_DIR)/ft_isupper.s
SRCS +=		$(SRC_DIR)/ft_islower.s
SRCS +=		$(SRC_DIR)/ft_isalpha.s
SRCS +=		$(SRC_DIR)/ft_isdigit.s
SRCS +=		$(SRC_DIR)/ft_isalnum.s
SRCS +=		$(SRC_DIR)/ft_isascii.s
SRCS +=		$(SRC_DIR)/ft_isprint.s
SRCS +=		$(SRC_DIR)/ft_toupper.s
SRCS +=		$(SRC_DIR)/ft_tolower.s
SRCS +=		$(SRC_DIR)/ft_puts.s

OBJS :=		$(SRCS:$(SRC_DIR)/%.s=$(OBJ_DIR)/%.o)

.PHONY:		 all clean fclean re test

all:		$(OBJ_DIR) $(NAME)

$(NAME):	$(OBJS)
	ar -rcs $(NAME) $^

$(OBJ_DIR):
	mkdir -p $(@)

$(OBJ_DIR)/%.o:	$(SRC_DIR)/%.s
	$(NASM) $(NFLAGS) $< -o $@

clean:
	@rm -rf $(OBJ_DIR)

fclean:	clean
	@rm -rf $(NAME)

re:	fclean all
