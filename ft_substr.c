/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   ft_substr.c                                        :+:    :+:            */
/*                                                     +:+                    */
/*   By: abeznik <abeznik@student.codam.nl>           +#+                     */
/*                                                   +#+                      */
/*   Created: 2020/11/01 11:03:44 by abeznik       #+#    #+#                 */
/*   Updated: 2020/11/14 11:54:14 by abeznik       ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char		*ft_substr(char const *s, unsigned int start, size_t len)
{
	size_t	i;
	char	*ptr;

	if (!s)
		return (NULL);
	if (start + 1 > ft_strlen(s) || !len)
		return (ft_strdup(""));
	ptr = (char *)ft_calloc(len + 1, sizeof(char));
	if (!ptr)
		return (NULL);
	i = 0;
	while (len > i && s[start + i])
	{
		ptr[i] = s[start + i];
		i++;
	}
	return (ptr);
}
