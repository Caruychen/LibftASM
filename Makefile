NAME :=	libfts.a

NASM :=	nasm
NFLAGS :=	-f macho64

SRC_DIR :=	src
OBJ_DIR :=	obj
SRCS :=	$(SRC_DIR)/ft_strlen.s
OBJS :=	$(SRCS:$(SRC_DIR)/%.s=$(OBJ_DIR)/%.o)

.PHONY: all clean fclean re

all:	$(OBJ_DIR) $(NAME)

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
