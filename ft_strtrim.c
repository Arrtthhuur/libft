/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   ft_strtrim.c                                       :+:    :+:            */
/*                                                     +:+                    */
/*   By: abeznik <abeznik@student.codam.nl>           +#+                     */
/*                                                   +#+                      */
/*   Created: 2020/11/01 11:50:54 by abeznik       #+#    #+#                 */
/*   Updated: 2020/11/15 15:03:35 by abeznik       ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static int		ft_char_set(char c, char const *set)
{
	size_t	i;

	i = 0;
	while (set[i])
	{
		if (set[i] == c)
			return (1);
		i++;
	}
	return (0);
}

char			*ft_strtrim(char const *s1, char const *set)
{
	char	*str;
	char	*s;
	size_t	start;
	size_t	end;

	str = (char *)s1;
	s = (char *)set;
	if (!str)
		return (NULL);
	end = ft_strlen(str);
	if (end == 0)
		return (ft_strdup(""));
	start = 0;
	end--;
	while (str[start] && ft_char_set(str[start], s))
		start++;
	while (end > 0 && ft_char_set(str[end], s))
		end--;
	if (start > end)
		return (ft_strdup(""));
	return (ft_substr(str, start, end - start + 1));
}
