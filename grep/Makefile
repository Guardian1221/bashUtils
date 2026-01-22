FLAGS = -Wall -Werror -Wextra -std=c11 -pedantic
SRC = _7214_grep.c

all: build

build: _7214_grep

test:
	chmod 777 ruth_grep.sh
	./ruth_grep.sh

_7214_grep: _7214_grep.c
	gcc $(FLAGS) $(SRC) -o _7214_grep

.PHONY: clean

clean:
	rm -rf _7214_grep
	rm -rf *.a *.out *.o *.txt

rebuild:
	make clean
	make all
	rm -rf  *.o *.