# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eneto <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/04/03 15:45:09 by eneto             #+#    #+#              #
#    Updated: 2025/04/03 15:45:16 by eneto            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = cub3d
CC = cc
FLAGS = -Wall -Wextra -Werror
RM = rm -f
OBJ = $(SOURCES:.c=.o)
LIBFT = libft.a
SOURCES = 

all : $(NAME)

$(NAME): $(OBJ)
	$(CC) $(FLAGS) $(LIBFT) $(NAME)

clean:
	$(RM) $(OBJ)

flcean: clean
	$(RM) $(NAME)

re: fclean all
