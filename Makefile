# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eneto <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/04/03 15:45:09 by eneto             #+#    #+#              #
#    Updated: 2025/04/04 09:29:08 by eneto            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = cub3d
CC = cc
CFLAGS = -Wall -Wextra -Werror
RM = rm -rf
OBJ = $(SOURCES:.c=.o)
LIBFT = ./inc/libft
MLX = ./inc/minilibx-linux
SOURCES = src/main.c\

all : $(NAME)

$(NAME): $(OBJ)
	@make -s -C $(LIBFT)
	@make -s -C $(MLX)
	$(CC) $(CFLAGS) $(OBJ) -o $(NAME) -L$(LIBFT) -L$(MLX)  -lft -lmlx -lm -lX11 -lXext

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)
	make fclean -C $(LIBFT)
	make clean -C $(MLX)

re: fclean all
