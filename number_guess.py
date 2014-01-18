#!/usr/bin/python
from random import randint



change = ""
high = 1000
low = 1
guesses = 0
while(change != "done"):
   guess = (high+low) / 2
   print "Is it: ", guess
   change = raw_input("Higher or lower? ")

   if change == "higher":
      low = guess
   elif change == "lower":
      high = guess
   guesses = guesses + 1
   print '-'*25
   
print "guessed in: ", guesses
