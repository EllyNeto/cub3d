/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: eneto <marvin@42.fr>                       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/03 15:50:01 by eneto             #+#    #+#             */
/*   Updated: 2025/04/04 11:38:30 by eneto            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../inc/cub3d.h"

int main(int ac, char **av)
{
    void	*mlx_ptr;
	void	*mlx_win;
    int i = 0;
    if(ac < 2)
    {
        while(av[i])
        {
            mlx_ptr = mlx_init();
            mlx_win = mlx_new_window(mlx_ptr, 1000, 1000, "Barbie's house");
            for (int x = 0; x < 1000;  x++)
            {
                for (int y = 0; y < 1000;  y++)
                {
                    //mlx_pixel_put(mlx_ptr, mlx_win, 0 + x, 0 + y, 0xff00ff);
                    mlx_pixel_put(mlx_ptr, mlx_win,78 + x , 78 + y , 0x000fff);
                }
            }
            mlx_loop(mlx_ptr);
            i++;
        }
    }
    return (0);
}
