CFLAGS = -std=c99 -pedantic -Wall -Wextra -Wfloat-equal -Wshadow
CC = gcc
all: bin/ output.exe
output.exe: main.o a.o
	$(CC) $(CFLAGS) bin/main.o bin/a.o -o bin/output.exe
main.o:
	$(CC) $(CFLAGS) -c src/main.c -o bin/main.o
a.o:
	$(CC) $(CFLAGS) -c src/a.c -o bin/a.o
bin/:
	@mkdir bin
clean:
	@rm bin/*
