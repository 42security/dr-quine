CC = gcc
NA = nasm -f macho64
FLAG = -Wall -Werror -Wall

SRC_C = Colleen.s
SRC_G = Grace.s
SRC_S = Sully.s

OBJ_C = $(SRC_C:.s=.o)
OBJ_G = $(SRC_G:.s=.o)
OBJ_S = $(SRC_S:.s=.o)

all: Colleen Grace Sully

Colleen: $(OBJ_C)
	@$(CC) $(FLAG) $(OBJ_C) -o Colleen
	./Colleen > Colleenfile
	diff Colleen.s Colleenfile

Grace: $(OBJ_G)
	@$(CC) $(FLAG) $(OBJ_G) -o Grace
	./Grace
	diff Grace.s Grace_kid.s

Sully: $(OBJ_S)
	@$(CC) $(FLAG) $(OBJ_S) -o Sully
	./Sully
	diff Sully.s Sully_5.s
	diff Sully_5.s Sully_0.s || exit 0
	diff Sully_3.s Sully_2.s || exit 0

%.o: %.s
	@$(NA) $<

clean:
	@rm $(OBJ_S) $(OBJ_G) $(OBJ_C)

fclean: clean
	@rm Sully Colleen Grace Sully_* Grace_kid.s Colleenfile

re: fclean all

.PHONY: all clean fclean re