# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eneto <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/04/03 15:45:09 by eneto             #+#    #+#              #
#    Updated: 2025/04/03 16:13:45 by eneto            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = cub3d
CC = cc
FLAGS = -Wall -Wextra -Werror
RM = rm -rf
OBJ = $(SOURCES:.c=.o)
LIBFT = ../inc/libft/libft.a
MLX = ../inc/minilibx-linux
SOURCES = src/main.c\

all : $(NAME)

$(NAME): $(OBJ)
	$(CC) $(FLAGS) $(LIBFT) $(MLX) $(NAME) -lm -lX11 -lXext

clean:
	$(RM) $(OBJ)

flcean: clean
	$(RM) $(NAME)

re: fclean all
