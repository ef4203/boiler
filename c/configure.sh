#!/bin/bash
if [ -f Makefile ]; then
    rm Makefile
fi

printf "CFLAGS = -std=c99 -pedantic -Wall -Wextra -Wfloat-equal -Wshadow\n" >> Makefile
printf "CC = gcc\n" >> Makefile

printf "all: bin/ output.exe\n" >> Makefile

allheader=$(find ! -type d | grep "\\.h" | sed -e 's/.*\///g' -e 's/\.h//g')

if [ "$allheader" == "" ]; then
    objinclude=""
else
    objinclude="$(echo $allheader | sed -e 's/ /.o /g').o"
    for h in $objinclude
    do
        objpath="bin/$h "
        objlist="$objlist$objpath"
    done
fi

printf "output.exe: main.o $objinclude\n" >> Makefile
printf "\t\$(CC) \$(CFLAGS) bin/main.o $objlist-o bin/output.exe\n" >> Makefile

printf "main.o:\n" >> Makefile
printf "\t\$(CC) \$(CFLAGS) -c src/main.c -o bin/main.o\n" >> Makefile

for n in $allheader
do
    printf "$n.o:\n" >> Makefile
    printf "\t\$(CC) \$(CFLAGS) -c $(find ! -type d | grep $n.c | sed 's/\.\///') -o bin/$n.o\n" >> Makefile
done

printf "bin/:\n" >> Makefile
printf "\t@mkdir bin\n" >> Makefile

printf "clean:\n" >> Makefile
printf "\t@rm bin/*\n" >> Makefile
