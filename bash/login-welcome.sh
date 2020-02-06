#!/bin/bash
###############
# Variables   #
###############
myname="$USER"
hostname="$(hostname)"
day=$(date +%A)
currenttime=$(date +%I:%M\ %p)
if [ "$day" = Monday ]
then
a="Welcome to planet $hostname, Super $myname!"
elif [ "$day" = Tuesday ]
then
a="Welcome to planet $hostname, Hacker $myname!"
elif [ "$day" = Wednesday ]
then
a="Welcome to planet $hostname, Nerd $myname!"
elif [ "$day" = Thursday ]
then
a="Welcome to planet $hostname, Great $myname!"
elif [ "$day" = Friday ]
then
a="Welcome to planet $hostname, Avatar $myname!"
elif [ "$day" = Saturday ]
then
a="Welcome to planet $hostname, Betman $myname!"
else
a="Welcome to planet $hostname, Spiderman $myname!"
fi
b="It is $currenttime on $day ."
cowsay "$a $b"
