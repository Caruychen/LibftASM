# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cchen <cchen@student.hive.fi>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/21 13:25:22 by cchen             #+#    #+#              #
#    Updated: 2022/11/21 13:25:23 by cchen            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

LIB_DIR :=	..
LIBFTS :=	$(addprefix $(LIB_DIR), /libfts.a)

EXEC :=		test

CC :=		gcc
CFLAGS :=	-Wall -Werror -Wextra -arch x86_64
INCLUDES :=	-I$(LIB_DIR)/includes -I./includes
LINK :=		-L $(LIB_DIR)/ -lfts

SRC_DIR :=	src
OBJ_DIR :=	obj
DEP_DIR :=	dep
SRCS :=		$(shell find $(SRC_DIR) -type f | grep -E "\.c$$")
OBJS :=		$(SRCS:$(SRC_DIR)/%.c=$(OBJ_DIR)/%.o)

# **************************************************************************** #
#                                  Recipes                                     #
# **************************************************************************** #
.PHONY: all clean fclean re

all: $(LIBFTS) $(EXEC)

$(EXEC): $(DEP_DIR) $(OBJ_DIR) $(OBJS)
	@echo "Compiling test..."
	$(CC) $(CFLAGS) $(OBJS) $(LINK) -o $(@)

$(OBJ_DIR):
	@mkdir -p $(@)

$(DEP_DIR):
	@mkdir -p $(@)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) -c $(CFLAGS) $(INCLUDES) -o $@ $<
	@set -e; rm -f $(DEP_DIR)/$*.d; \
	$(CC) -MM $(CFLAGS) $(INCLUDES) $< > $(DEP_DIR)/$*.d.$$$$; \
	sed 's,\($*\)\.o[ :]*,$@ $(DEP_DIR)/\1.d : ,g' < $(DEP_DIR)/$*.d.$$$$ > $(DEP_DIR)/$*.d; \
	rm -f $(DEP_DIR)/$*.d.$$$$

$(LIBFTS):
	@$(MAKE) -C $(LIB_DIR)

debug: CFLAGS += -g
debug: clean $(LIBFTS) $(EXEC)

fsan: CFLAGS += -fsanitize=address -g
fsan: clean $(LIBFTS) $(EXEC)

clean:
	@rm -rf $(OBJ_DIR) $(DEP_DIR)
	@$(MAKE) -C $(LIB_DIR) clean

fclean: clean
	@rm -rf $(EXEC)
	@$(MAKE) -C $(LIB_DIR) fclean

re: fclean all
