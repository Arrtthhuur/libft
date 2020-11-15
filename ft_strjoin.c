/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   ft_strjoin.c                                       :+:    :+:            */
/*                                                     +:+                    */
/*   By: abeznik <abeznik@student.codam.nl>           +#+                     */
/*                                                   +#+                      */
/*   Created: 2020/11/01 11:21:29 by abeznik       #+#    #+#                 */
/*   Updated: 2020/11/14 12:02:37 by abeznik       ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char		*ft_strjoin(char const *s1, char const *s2)
{
	char	*ptr;
	size_t	len_s1;
	size_t	len_s2;

	if (!s1 || !s2)
		return (NULL);
	len_s1 = ft_strlen(s1);
	len_s2 = ft_strlen(s2);
	ptr = (char *)malloc((len_s1 + len_s2 + 1) * sizeof(char));
	if (!ptr)
		return (NULL);
	ft_memmove(ptr, s1, len_s1);
	ft_memmove(ptr + len_s1, s2, len_s2);
	ptr[len_s1 + len_s2] = '\0';
	return (ptr);
}
