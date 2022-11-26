#!/bin/bash

guessGame() 
{
    numCorrect=$(ls -A|wc -l)
    echo "Hi User! Can you guess the number of files present in the current working directory?"
    while true;
    do
        read  numGuessed
        if [ $numGuessed -lt $numCorrect ]
        then
            echo "Try Again! The guessed number is lesser than the actual number."
        elif [ $numGuessed -gt $numCorrect ]
        then
            echo "Try Again! The guessed number is greater than the actual number."
        else
            echo " Congratulations !!! Your guess is right!"
		break;
        fi
	done
}
guessGame
