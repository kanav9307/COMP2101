#!/bin/bash
referenceString="Password"
read -s -p "Guess the password:" myString
echo
if [ $myString = $referenceString ]; then
echo "You guessed the password!"
echo
else
echo ">>>TRY AGAIN<<<"
read -s -p "Guess the password:" myString
if [ $myString = $referenceString ]; then
echo "You guessed the password!"
echo
else
echo
echo ">>>TRY AGAIN<<<"
read -s -p "Guess the password:" myString
if [ $myString = $referenceString ]; then
echo "You guessed the password!"
echo
else
echo
echo ">>>TRY AGAIN<<<"
read -s -p "Guess the password:" myString
if [ $myString = $referenceString ]; then
echo "You guessed the password!"
echo
else
echo
echo ">>>TRY AGAIN<<<"
read -s -p "Guess the password:" myString
if [ $myString = $referenceString ]; then
echo "You guessed the password!"
echo
else
echo
echo ">>>TRY AGAIN<<<"
fi
fi
fi
fi
fi
