NAME	= libft.a

CFLAGS	= -Wall -Werror -Wextra -std=c99 -c

SRC		= ft_bzero.c ft_memset.c ft_memcpy.c ft_memccpy.c \
		  ft_memmove.c ft_memchr.c ft_memcmp.c ft_strlen.c \
		  ft_strdup.c ft_strcpy.c ft_strncpy.c ft_strcat.c \
		  ft_strncat.c ft_strlcat.c ft_strchr.c ft_strrchr.c

INC		= libft.h
INC_DIR	= ./include
SRC_DIR	= ./src
OBJ_DIR	= ./obj

OBJ		= $(SRC:.c=.o)
OBJS	= $(foreach element, $(OBJ), $(OBJ_DIR)/$(element))
SRCS	= $(foreach element, $(SRC), $(SRC_DIR)/$(element))


all: obj_make $(NAME)

$(NAME):
	ar rs $(NAME) $(OBJS)
	ranlib $(NAME)

obj_make: $(SRCS) $(INC_DIR)/$(INC)
	gcc $(CFLAGS) -I$(INC_DIR) $(SRCS)
	mv *.o $(OBJ_DIR)/

clean:
	rm -rf $(OBJS)

fclean: clean
	rm -rf $(NAME)

re: fclean all
