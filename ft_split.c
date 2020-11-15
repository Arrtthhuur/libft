/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   ft_split.c                                         :+:    :+:            */
/*                                                     +:+                    */
/*   By: abeznik <abeznik@student.codam.nl>           +#+                     */
/*                                                   +#+                      */
/*   Created: 2020/11/15 09:15:26 by abeznik       #+#    #+#                 */
/*   Updated: 2020/11/15 10:50:02 by abeznik       ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static	size_t		ft_countwords(char *str, char c)
{
	size_t	i;
	size_t	nbw;
	size_t	len;

	i = 0;
	len = ft_strlen(str);
	while (str[i] == c && str[i])
		i++;
	if (i == len)
		return (0);
	nbw = 0;
	while (str[i])
	{
		if (str[i] == c && str[i + 1] != c && i != len - 1)
			nbw++;
		i++;
	}
	return (nbw + 1);
}

static	char		*ft_splitter(char *str, char c)
{
	size_t	i;
	size_t	start;
	size_t	end;
	char	*ptr;

	i = 0;
	while (str[i] == c)
		i++;
	start = i;
	while (str[i] != c && str[i])
		i++;
	end = i;
	ptr = ft_substr(str, start, end - start);
	return (ptr);
}

static	void		*ft_free(char **ret, size_t i)
{
	while (i > 0)
	{
		i--;
		ret[i] = NULL;
		free(ret[i]);
	}
	free(ret);
	return (NULL);
}

char				**ft_split(char const *s, char c)
{
	char	*ptr;
	char	**ret;
	size_t	nb_words;
	size_t	i;

	ptr = (char *)s;
	if (!ptr)
		return (NULL);
	nb_words = ft_countwords(ptr, c);
	ret = (char **)malloc((nb_words + 1) * sizeof(char *));
	if (!ret)
		return (NULL);
	i = 0;
	while (nb_words > i)
	{
		ret[i] = ft_splitter(ptr, c);
		if (!ret[i])
			return (ft_free(ret, i));
		while (*ptr == c)
			ptr++;
		ptr = ft_memchr(ptr, (int)c, ft_strlen(ptr));
		i++;
	}
	ret[i] = NULL;
	return (ret);
}
