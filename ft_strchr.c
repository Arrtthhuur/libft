/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   ft_strchr.c                                        :+:    :+:            */
/*                                                     +:+                    */
/*   By: abeznik <abeznik@student.codam.nl>           +#+                     */
/*                                                   +#+                      */
/*   Created: 2020/10/26 16:14:55 by abeznik       #+#    #+#                 */
/*   Updated: 2020/11/14 10:58:39 by abeznik       ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strchr(const char *s, int c)
{
	int		i;
	char	*str;

	str = (char *)s;
	if (*str == (char)c)
		return (str);
	i = 1;
	while (str[i - 1])
	{
		if (str[i] == (char)c)
			return (str + i);
		i++;
	}
	return (NULL);
}
