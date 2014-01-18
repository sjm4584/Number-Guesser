#!/bin/bash
#Guesses a number you're thinking of between 1-1000
#By Sean McConnell

high=1000
low=1
guesses=0
guess=0
change=""
echo "'y' if correct, 'higher', 'lower'"
while true; do
  #if the user input is 'y' then print 'Guessed it' and exit the while loop
  if [[ $change = "y" ]]; then echo "Guessed it"; break; fi
  
  #computes the next guess, `expr` is slower since it's a separate process
  guess=$((($high+$low)/2))
  echo "Is it: $guess? "
  
  #this takes in user input and stores it in the new variable $change
  read -a change
	
  #if the user enters 'higher' assign the guess value to the variable $low
  if [[ $change = "higher" ]]; then low=$guess; fi
  if [[ $change = "lower" ]]; then high=$guess; fi
 
  guesses=$(($guesses+1))

  #this prints a line of 20 '-' 
  printf "%0.s-" {1..20}
  echo

done
echo "Guessed in: $guesses guesses"
