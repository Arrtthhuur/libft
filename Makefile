# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: abeznik <abeznik@student.codam.nl>           +#+                      #
#                                                    +#+                       #
#    Created: 2020/10/26 15:34:56 by abeznik       #+#    #+#                  #
#    Updated: 2020/11/15 10:51:07 by abeznik       ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

SRCS	=	ft_memset.c $\
			ft_bzero.c $\
			ft_memcpy.c $\
			ft_memccpy.c $\
			ft_memmove.c $\
			ft_memchr.c $\
			ft_memcmp.c $\
			ft_strlen.c $\
			ft_strlcpy.c $\
			ft_strlcat.c $\
			ft_strchr.c $\
			ft_strrchr.c $\
			ft_strnstr.c $\
			ft_strncmp.c $\
			ft_atoi.c $\
			ft_isalpha.c $\
			ft_isdigit.c $\
			ft_isalnum.c $\
			ft_isascii.c $\
			ft_isprint.c $\
			ft_toupper.c $\
			ft_tolower.c $\
			ft_calloc.c $\
			ft_strdup.c $\
			ft_substr.c $\
			ft_strjoin.c $\
			ft_strtrim.c $\
			ft_split.c $\
			ft_itoa.c $\
			ft_strmapi.c $\
			ft_putchar_fd.c $\
			ft_putstr_fd.c $\
			ft_putendl_fd.c $\
			ft_putnbr_fd.c $\
			ft_putchar_bonus.c $\
			ft_putstr_bonus.c $\
			ft_abs_bonus.c

MAINS	=	mains/main_memset.c $\
			mains/main_bzero.c $\
			mains/main_memcpy.c $\
			mains/main_memccpy.c $\
			mains/main_memmove.c $\
			mains/main_memchr.c $\
			mains/main_memcmp.c $\
			mains/main_strlen.c $\
			mains/main_strlcpy.c $\
			mains/main_strlcat.c $\
			mains/main_strchr.c $\
			mains/main_strrchr.c $\
			mains/main_strnstr.c $\
			mains/main_strncmp.c $\
			mains/main_atoi.c $\
			mains/main_isalpha.c $\
			mains/main_isdigit.c $\
			mains/main_isalnum.c $\
			mains/main_isascii.c $\
			mains/main_isprint.c $\
			mains/main_toupper.c $\
			mains/main_tolower.c $\
			mains/main_calloc.c $\
			mains/main_strdup.c $\
			mains/main_substr.c $\
			mains/main_strjoin.c $\
			mains/main_strtrim.c $\
			mains/main_split.c $\
			mains/main_itoa.c $\
			mains/main_putchar_fd.c $\
			mains/main_putstr_fd.c $\
			mains/main_putendl_fd.c $\
			mains/main_putnbr_fd.c $\
			mains/main_putstr_bonus.c $\
			mains/main_putchar_bonus.c $\
			mains/main_abs_bonus.c

OBJS	=	$(SRCS:.c=.o)

MAIN	=	$(MAINS:.c=.o)

CC		=	gcc
RM		=	rm -f
CFLAGS	=	-Wall -Wextra -Werror -I.

NAME	=	libft.a

all:		$(NAME)

$(NAME): 	$(OBJS)
	ar cr $(NAME) $(OBJS)

clean:
	$(RM) $(OBJS)

fclean:		clean
	$(RM) $(NAME)

mclean:		clean
	$(RM) $(MAIN)

oclean:
	$(RM) *.out

del:		fclean mclean oclean 

re:			fclean all

.PHONY:		all clean fclean mclean re

memset:		ft_memset.o mains/main_memset.o
	$(CC) -o memset.out ft_memset.o mains/main_memset.o

bzero:		ft_bzero.o mains/main_bzero.o ft_memset.o
	$(CC) -o bzero.out ft_bzero.o mains/main_bzero.o ft_memset.o

memcpy:		ft_memcpy.o mains/main_memcpy.o
	$(CC) -o memcpy.out ft_memcpy.o mains/main_memcpy.o

memccpy:	ft_memccpy.o mains/main_memccpy.o
	$(CC) -o memccpy.out ft_memccpy.o mains/main_memccpy.o

memmove:	ft_memmove.o mains/main_memmove.o ft_memcpy.o
	$(CC) -o memmove.out ft_memmove.o mains/main_memmove.o ft_memcpy.o

memchr:		ft_memchr.o mains/main_memchr.o
	$(CC) -o memchr.out ft_memchr.o mains/main_memchr.o

memcmp:		ft_memcmp.o mains/main_memcmp.o ft_memcpy.o
	$(CC) -o memcmp.out ft_memcmp.o mains/main_memcmp.o ft_memcpy.o

strlen:		ft_strlen.o mains/main_strlen.o
	$(CC) -o strlen.out ft_strlen.o mains/main_strlen.o

strlcpy:	ft_strlcpy.o mains/main_strlcpy.o
	$(CC) -o strlcpy.out ft_strlcpy.o mains/main_strlcpy.o

strlcat:	ft_strlcat.o mains/main_strlcat.o ft_strlen.o
	$(CC) -o strlcat.out ft_strlcat.o mains/main_strlcat.o ft_strlen.o

strchr:		ft_strchr.o mains/main_strchr.o
	$(CC) -o strchr.out ft_strchr.o mains/main_strchr.o

strrchr:	ft_strrchr.o mains/main_strrchr.o ft_strlen.o
	$(CC) -o strrchr.out ft_strrchr.o mains/main_strrchr.o ft_strlen.o

strnstr:	ft_strnstr.o mains/main_strnstr.o ft_strlen.o
	$(CC) -o strnstr.out ft_strnstr.o mains/main_strnstr.o ft_strlen.o

strncmp:	ft_strncmp.o mains/main_strncmp.o ft_strlcpy.o
	$(CC) -o strncmp.out ft_strncmp.o mains/main_strncmp.o ft_strlcpy.o

atoi:		ft_atoi.o mains/main_atoi.o ft_putstr.o ft_putchar.o
	$(CC) -o atoi.out ft_atoi.o mains/main_atoi.o ft_putstr.o ft_putchar.o

isalpha:		ft_isalpha.o mains/main_isalpha.o
	$(CC) -o isalpha.out ft_isalpha.o mains/main_isalpha.o

isdigit:	ft_isdigit.o mains/main_isdigit.o
	$(CC) -o isdigit.out ft_isdigit.o mains/main_isdigit.o

isalnum:	ft_isalnum.o mains/main_isalnum.o ft_isalpha.o ft_isdigit.o
	$(CC) -o isalnum.out ft_isalnum.o mains/main_isalnum.o ft_isalpha.o ft_isdigit.o

isascii:	ft_isascii.o mains/main_isascii.o
	$(CC) -o isascii.out ft_isascii.o mains/main_isascii.o

isprint:	ft_isprint.o mains/main_isprint.o
	$(CC) -o isprint.out ft_isprint.o mains/main_isprint.o

toupper:	ft_toupper.o mains/main_toupper.o
	$(CC) -o toupper.out ft_toupper.o mains/main_toupper

tolower:	ft_tolower.o mains/main_tolower.o
	$(CC) -o tolower.out ft_tolower.o mains/main_tolower.o

calloc:		ft_calloc.o mains/main_calloc.o ft_bzero.o ft_memset.o
	$(CC) -o calloc.out ft_calloc.o mains/main_calloc.o ft_bzero.o ft_memset.o

strdup:		ft_strdup.o mains/main_strdup.o
	$(CC) -o strdup.out ft_strdup.o mains/main_strdup.o

substr:		ft_substr.o mains/main_substr.o
	$(CC) -o substr.out ft_substr.o mains/main_substr.o

strjoin:	ft_strjoin.o mains/main_strjoin.o ft_strlen.o
	$(CC) -o strjoin.out ft_strjoin.o mains/main_strjoin.o ft_strlen.o

strtrim:	ft_strtrim.o mains/main_strtrim.o ft_strlen.o ft_substr.o ft_strchr.o
	$(CC) -o strtrim.out ft_strtrim.o mains/main_strtrim.o ft_strlen.o ft_substr.o ft_strchr.o

itoa:		ft_itoa.o mains/main_itoa.o ft_calloc.o ft_bzero.o ft_atoi.o ft_abs_bonus.o ft_memset.o
	$(CC) -o itoa.out ft_itoa.o mains/main_itoa.o ft_calloc.o ft_bzero.o ft_atoi.o ft_abs_bonus.o ft_memset.o

putchar_fd:	ft_putchar_fd.o mains/main_putchar_fd.o
	$(CC) -o putchar_fd.out ft_putchar_fd.o mains/main_putchar_fd.o

putstr_fd:	ft_putstr_fd.o mains/main_putstr_fd.o
	$(CC) -o putstr_fd.out ft_putstr_fd.o mains/main_putstr_fd.o

putendl_fd:	ft_putendl_fd.o mains/main_putendl_fd.o ft_strlen.o
	$(CC) -o putendl_fd.out ft_putendl_fd.o mains/main_putendl_fd.o ft_strlen.o

putnbr_fd:	ft_putnbr_fd.o mains/main_putnbr_fd.o ft_putchar_fd.o
	$(CC) -o putnbr_fd.out ft_putnbr_fd.o mains/main_putnbr_fd.o ft_putchar_fd.o

putstr:		ft_putstr_bonus.o ft_putchar_bonus.o mains/main_putstr_bonus.o
	$(CC) -o putstr_bonus.out ft_putstr_bonus.o ft_putchar_bonus.o mains/main_putstr_bonus.o

putchar:	ft_putchar_bonus.o mains/main_putchar_bonus.o
	$(CC) -o putchar_bonus.out ft_putchar_bonus.o mains/main_putchar_bonus.o

abs:		ft_abs_bonus.o mains/main_abs_bonus.o
	$(CC) -o abs_bonus.out ft_abs_bonus.o mains/main_abs_bonus.o

split:		ft_split.o mains/main_split.o ft_substr.o ft_calloc.o ft_strdup.o ft_strlen.o ft_bzero.o ft_memmove.o ft_memset.o ft_memchr.o
	$(CC) -o split.out ft_split.o mains/main_split.o ft_substr.o ft_calloc.o ft_strdup.o ft_strlen.o ft_bzero.o ft_memmove.o ft_memset.o ft_memchr.o
