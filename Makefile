NAME		= libft.a

CFLAGS		= -Wall -Werror -Wextra -std=c99 -c

SRC         = ft_bzero.c ft_memset.c ft_memcpy.c ft_memccpy.c \
              ft_memmove.c ft_memchr.c ft_memcmp.c ft_strlen.c \
              ft_strdup.c ft_strcpy.c ft_strncpy.c ft_strcat.c \
              ft_strncat.c ft_strlcat.c ft_strchr.c ft_strrchr.c \
              ft_strcmp.c ft_strncmp.c ft_strstr.c ft_strnstr.c \
              ft_atoi.c ft_isalpha.c ft_isdigit.c ft_isalnum.c \
              ft_isascii.c ft_isprint.c ft_toupper.c ft_tolower.c\
              ft_memalloc.c ft_memdel.c ft_strnew.c ft_strdel.c \
              ft_strclr.c ft_striter.c ft_striteri.c ft_strmap.c \
              ft_strmapi.c ft_strequ.c ft_strnequ.c ft_strsub.c \
              ft_strjoin.c ft_strtrim.c ft_strsplit.c ft_itoa.c \
              ft_strrev.c ft_putchar.c ft_putstr.c ft_putendl.c \
              ft_putnbr.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c \
              ft_putnbr_fd.c ft_lstnew.c ft_lstdelone.c ft_lstdel.c \
              ft_lstadd.c ft_lstiter.c ft_lstmap.c get_next_line.c \
              ft_lstrev.c ft_print_char.c ft_print_number.c ft_print_str.c \
              ft_utils.c ft_printf.c


INC         = libft.h
INC_PRTF	= ft_printf.h
INC_DIR		= ./include
SRC_DIR		= ./src
OBJ_DIR		= ./obj

OBJ         = $(SRC:.c=.o)
OBJS		= $(foreach element, $(OBJ), $(OBJ_DIR)/$(element))
SRCS		= $(foreach element, $(SRC), $(SRC_DIR)/$(element))


all: $(NAME)

$(NAME): obj $(SRCS) $(INC_DIR)/$(INC) $(INC_DIR)/$(INC_PRTF)
	$(info [x] Finishing work)
	@ar rs $(NAME) $(OBJS)
	ranlib $(NAME)

obj:
	$(info [x] Compiling src files in .o files)
	@gcc $(CFLAGS) -I$(INC_DIR) $(SRCS)
	@mv $(OBJ) $(OBJ_DIR)

clean:
	$(info [x] Cleaning objects)
	@/bin/rm -f $(OBJS)

fclean: clean
	$(info [x] Deleting library file)
	@/bin/rm -f $(NAME)

re: fclean  all

.PHONY: all, clean, fclean, re, obj
