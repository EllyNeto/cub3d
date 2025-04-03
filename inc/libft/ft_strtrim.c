/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strtrim.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: eneto <marvin@42.fr>                       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/23 13:15:43 by eneto             #+#    #+#             */
/*   Updated: 2024/05/23 13:15:46 by eneto            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static int	ft_is_trim_possible(char c, char const *set)
{
	int		count;

	count = -1;
	while (set[++count])
		if (set[count] == c)
			return (1);
	return (0);
}

static int	ft_get_size(char const *s1, char const *set)
{
	int		count;
	int		size;

	size = ft_strlen(s1);
	count = 0;
	while (ft_is_trim_possible(s1[size - count - 1], set))
		count++;
	return (size - count);
}

char	*ft_strtrim(char const *s1, char const *set)
{
	int		count;
	int		size;
	char	*tab;

	count = 0;
	size = 0;
	if (!s1)
		return (0);
	if (!set)
		return (ft_strdup(s1));
	while (ft_is_trim_possible(s1[count], set))
		count++;
	if (count == (int)ft_strlen(s1))
		return (ft_strdup(""));
	size = ft_get_size(s1 + count, set) + 1;
	tab = (char *)malloc((size) * sizeof(char));
	if (!tab)
		return (NULL);
	ft_strlcpy(tab, s1 + count, size);
	return (tab);
}
