CC:= cc
CFLAGS:= -Wall -Wextra -Werror
SRCS:= ft_printf.c ft_sort.c ft_putchar.c ft_putnbr.c ft_putstr.c ft_putunsigned.c ft_hexadec.c ft_putptr.c
SRCS_BONUS:= 
OBJS:= $(SRCS:.c=.o)
OBJS_BONUS = $(SRCS_BONUS:.c=.o)
NAME:= libftprintf.a

all: $(NAME)

$(NAME): $(OBJS)
	ar cr $@ $^

$(OBJS): $(SRCS)
	$(CC) $(CFLAGS) -c $^ -I .

bonus: ${OBJS_BONUS}
	ar cr ${NAME} $^

clean:
	rm -f $(OBJS)
	rm -f ${OBJS_BONUS}

fclean: clean
	rm -f $(NAME)

re: fclean $(NAME)

.PHONY: all bonus clean fclean re