SRCS =	Colleen.py \
		Grace.py \
		Sully.py

all: Colleen Grace Sully

Colleen:
	python Colleen.py > Colleenfile
	diff Colleen.py Colleenfile

Grace:
	python Grace.py
	diff Grace.py Grace_kid.py

Sully:
	python Sully.py
	diff Sully.py Sully_5.py 
	diff Sully_5.py Sully_0.py || exit 0
	diff Sully_3.py Sully_2.py || exit 0

clean:
	@rm Colleenfile Grace_kid.py Sully_*
