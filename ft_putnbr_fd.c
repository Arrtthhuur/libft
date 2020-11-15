/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   ft_putnbr_fd.c                                     :+:    :+:            */
/*                                                     +:+                    */
/*   By: abeznik <abeznik@student.codam.nl>           +#+                     */
/*                                                   +#+                      */
/*   Created: 2020/11/01 12:06:21 by abeznik       #+#    #+#                 */
/*   Updated: 2020/11/01 12:12:03 by abeznik       ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static void	recursive(int n, int fd)
{
	if (n < 0)
	{
		ft_putchar_fd('-', fd);
		recursive(n * -1, fd);
	}
	else if (n < 10)
	{
		n += '0';
		ft_putchar_fd(n, fd);
	}
	else
	{
		recursive(n / 10, fd);
		n = n % 10 + '0';
		ft_putchar_fd(n, fd);
	}
}

void		ft_putnbr_fd(int n, int fd)
{
	if (n == -2147483648)
	{
		ft_putchar_fd('-', fd);
		ft_putchar_fd('2', fd);
		recursive(147483648, fd);
	}
	else
	{
		recursive(n, fd);
	}
}
