#!/usr/bin/python
from random import randint

change = ""
high = 1000
low = 1
guesses = 0

while(change.lower() != "done"):
   guess = (high+low) / 2
   print "Is your number: ", guess
   change = raw_input("Am I close? (higher or lower)")

   if change.lower() == "higher":
      low = guess #b/c you know it will never be below this number
   elif change.lower() == "lower":
      high = guess #b/c you know it will never be above this number
      
   guesses = guesses + 1
   print '-'*25 #prints 25 '-' characters
   
print "Ha! I guessed your number in only ", guesses
