/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   ft_atoi.c                                          :+:    :+:            */
/*                                                     +:+                    */
/*   By: abeznik <abeznik@student.codam.nl>           +#+                     */
/*                                                   +#+                      */
/*   Created: 2020/10/26 16:38:32 by abeznik       #+#    #+#                 */
/*   Updated: 2020/11/14 14:49:49 by abeznik       ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static	int		ft_isspace(char c)
{
	if (c == ' ' || c == '\t' || c == '\r' ||
	c == '\n' || c == '\v' || c == '\f')
		return (1);
	return (0);
}

int				ft_atoi(const char *str)
{
	int		i;
	int		neg;
	long	nb;

	i = 0;
	while (ft_isspace(str[i]))
		i++;
	neg = 1;
	if (str[i] == '-' || str[i] == '+')
	{
		if (str[i] == '-')
			neg = neg * -1;
		i++;
	}
	nb = 0;
	while (str[i] >= '0' && str[i] <= '9' && str[i])
	{
		nb = (nb * 10) + (str[i] - '0');
		i++;
	}
	return (neg * nb);
}
