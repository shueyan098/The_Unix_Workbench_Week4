#!/bin/bash
#File: guessinggame.sh

read -p "Please guess how many files are in this directory: " guess

num_file=$(ls -1 | wc -l)

function guessingrule {
  if [[ $guess -lt $num_file ]]
  then 
     echo You entered: $guess. Your guess is lower than correct answer.
     read -p "Please try again: " guess
  elif [[ $guess -gt $num_file ]]
  then
     echo You entered: $guess. Your guess is higher than correct answer.
	 read -p "Please try again: " guess
  else
     echo Congratulations! You got it right.
	 let guess=-1
  fi
}

while [[ $guess -ge 0 ]]
do  
  guessingrule
done 