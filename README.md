# guessGame
#/usr/bin/env bash

all: README.md

README.md: guessGame.ksh
touch README.md
echo "# guessGame" > README.md
echo $$(date) >> README.md
echo " \n" >> README.md
wc -l guessGame.ksh | egrep -o "[0-9]+" >> README.md
clean:
rm README.md
