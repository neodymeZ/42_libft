# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: larosale <larosale@42.fr>                  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/05/04 11:31:09 by larosale          #+#    #+#              #
#    Updated: 2020/05/13 17:59:46 by larosale         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= libft.a
CFLAGS		= -Wall -Werror -Wextra
SRCS_REG	= ft_memset.c ft_bzero.c ft_memcpy.c ft_memccpy.c ft_memmove.c \
			ft_memchr.c ft_memcmp.c ft_strlen.c ft_strlcpy.c ft_strlcat.c \
			ft_strchr.c ft_strrchr.c ft_strnstr.c ft_strncmp.c ft_atoi.c \
			ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c \
			ft_toupper.c ft_tolower.c ft_calloc.c ft_strdup.c ft_substr.c \
			ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c \
			ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c
OBJS_REG	= $(SRCS_REG:.c=.o)
SRCS_BONUS	= ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c \
			ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c \
			ft_lstmap.c
OBJS_BONUS	= $(SRCS_BONUS:.c=.o)
HEADER		= libft.h

all: $(NAME)

$(NAME): $(OBJS_REG)
	@ar rc $(NAME) $(OBJS_REG)
	@ranlib $(NAME)
	@echo "\033[90m[\033[32mSuccess\033[90m]\033[32m Successfully \
	compiled Libft.\033[0m"

.PHONY: bonus
bonus: $(OBJS_BONUS)
	@ar rc $(NAME) $(OBJS_BONUS)
	@ranlib $(NAME)
	@echo "\033[90m[\033[32mSuccess\033[90m]\033[32m Successfully \
	added bonus functions to Libft.\033[0m"

%.o: %.c $(HEADER)
	@$(CC) $(CFLAGS) -c $<
	@echo "\033[90m[\033[32mOK\033[90m]\033[34m Compiling $<\033[0m"

.PHONY: clean
clean:
	@rm -f $(OBJS_REG) $(OBJS_BONUS)
	@echo "\033[90m[\033[91mDeleting\033[90m]\033[31m Object files \
	were deleted\033[0m"

.PHONY: fclean
fclean: clean
	@rm -f $(NAME)
	@echo "\033[90m[\033[91mDeleting\033[90m]\033[31m Libft.a was \
	deleted.\033[0m"

.PHONY: re
re: fclean all
