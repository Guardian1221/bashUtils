FLAGS = -Wall -Werror -Wextra -std=c11 -pedantic
SRC = _7214_cat.c

all: build

build: _7214_cat

test:
	chmod 777 ruth_cat.sh
	./ruth_cat.sh

_7214_cat: _7214_cat.c
	gcc $(FLAGS) $(SRC) -o _7214_cat

.PHONY: clean

clean:
	rm -rf _7214_cat
	rm -rf *.a *.out *.o *.txt

rebuild:
	make clean
	make all
	rm -rf  *.o *.
