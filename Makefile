# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pesrisaw <pesrisaw@student.42bangkok.com>  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/05/05 17:51:55 by pesrisaw          #+#    #+#              #
#    Updated: 2024/05/15 22:38:52 by pesrisaw         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = push_swap
CC = cc
CFLAGS = -Wall -Wextra -Werror
# CFLAGS =
AR = ar rcs
RM = rm -f


FILES = main \
		ft_util \
		swap \
		ft_stack \
		push \
		rotate \
		reverse \
		ft_split \
		ft_atoi \
		check_input


SRCS_DIR = ./
SRCS = $(addprefix $(SRCS_DIR), $(addsuffix .c, $(FILES)))

OBJS_DIR = ./
OBJS = $(addprefix $(OBJS_DIR), $(addsuffix .o, $(FILES)))

all: $(NAME)

$(NAME): $(OBJS) push_swap.h
	$(CC) $(CFLAGS) $(OBJS) -o $(NAME) $(INCLUDE)

.c.o: $(SRCS)
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	$(RM) $(OBJS) $(NAME) a.out

fclean: clean
	$(RM) $(NAME)

re: clean all

.PHONY: bonus all clean fclean re