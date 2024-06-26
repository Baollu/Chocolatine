##
## EPITECH PROJECT, 2023
## test
## File description:
## test
##

SRC	=	main.c				\

CFLAGS	=	-Wall -Wextra

OBJ	=	$(SRC:.c=.o)

NAME	=	binary_choco

all:	$(OBJ)
	gcc -o $(NAME) $(SRC)

tests_run:	$(OBJ)
	$(CC) -o tests/unit_tests $(SRC) tests/test_main.c \
	--coverage -lcriterion


clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHOMY: all clean fclean re
