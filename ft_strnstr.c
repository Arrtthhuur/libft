/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   ft_strnstr.c                                       :+:    :+:            */
/*                                                     +:+                    */
/*   By: abeznik <abeznik@student.codam.nl>           +#+                     */
/*                                                   +#+                      */
/*   Created: 2020/09/22 12:15:40 by abeznik       #+#    #+#                 */
/*   Updated: 2020/11/14 11:06:50 by abeznik       ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include "libft.h"

char	*ft_strnstr(const char *haystack, const char *needle, size_t len)
{
	size_t	i;
	size_t	j;
	char	*h;
	char	*n;

	h = (char *)haystack;
	n = (char *)needle;
	i = 0;
	if (!ft_strlen(n))
		return (h);
	while (h[i] && len > i)
	{
		j = 0;
		while (h[i] != n[j] && h[i] && len > i)
			i++;
		while (h[i] == n[j] && h[i] && n[j] && len > i)
		{
			i++;
			j++;
		}
		if (n[j] == '\0')
			return (h + i - j);
	}
	return (NULL);
}
