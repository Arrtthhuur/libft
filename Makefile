# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: abeznik <abeznik@student.codam.nl>           +#+                      #
#                                                    +#+                       #
#    Created: 2020/10/26 15:34:56 by abeznik       #+#    #+#                  #
#    Updated: 2020/11/23 11:15:07 by abeznik       ########   odam.nl          #
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
			ft_putchar.c $\
			ft_putstr.c $\
			ft_putnbr.c

BONUS_SRCS	=	ft_lstnew.c $\
				ft_lstadd_front.c $\
				ft_lstsize $\
				ft_lstlast.c $\
				ft_lstadd_back.c $\
				ft_lstdelone.c $\
				ft_lstclear.c $\
				ft_lstiter.c $\
				ft_lstmap

REG_OBJS	=	$(SRCS:.c=.o)

BONUS_OBJS	=	$(BONUS_SRCS:.c=.o)

MAIN		=	$(MAINS:.c=.o)

CC			=	gcc
RM			=	rm -f
CFLAGS		=	-Wall -Wextra -Werror -I.

NAME		=	libft.a

ifdef WITH_BONUS
OBJ_FILES = $(REG_OBJS) $(BONUS_OBJS)
else
OBJ_FILES = $(REG_OBJS)
endif

all:		$(NAME)

$(NAME): 	$(REG_OBJS)
	ar cr $(NAME) $(REG_OBJS)

bonus:
	$(MAKE) WITH_BONUS=1 all

clean:
	$(RM) $(REG_OBJS) $(BONUS_OBJS)

fclean:		clean
	$(RM) $(NAME)

re:			fclean all

.PHONY:		all clean fclean re bonus
