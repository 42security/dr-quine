CC = gcc
FLAG= -Wall -Werror -Wall

SRC_C = Colleen.c
SRC_G = Grace.c
SRC_S = Sully.c

OBJ_C = $(SRC_C:.c=.o)
OBJ_G = $(SRC_G:.c=.o)
OBJ_S = $(SRC_S:.c=.o)

all: Colleen Grace Sully

Colleen: $(OBJ_C)
	
	@$(CC) $(FLAG) $(OBJ_C) -o Colleen
	./Colleen > Colleenfile
	diff Colleen.c Colleenfile

Grace: $(OBJ_G)
	@$(CC) $(FLAG) $(OBJ_G) -o Grace
	./Grace
	diff Grace.c Grace_kid.c

Sully: $(OBJ_S)
	@$(CC) $(FLAG) $(OBJ_S) -o Sully
	./Sully
	diff Sully.c Sully_5.c
	diff Sully_5.c Sully_0.c || exit 0
	diff Sully_3.c Sully_2.c || exit 0

%.o: %.s
	@$(GCC) $(FLAG) -c $< -o $@ 

clean:
	@rm -rf $(OBJ_S) $(OBJ_G) $(OBJ_C)

fclean: clean
	@rm -rf Sully Colleen Grace Sully_* Grace_kid.c Colleenfile

re: fclean all

.PHONY: all clean fclean re
