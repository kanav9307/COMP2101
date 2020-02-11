#!/bin/bash
# This script demonstrates how the shift command works
myargs=()
while [ $# -gt 0 ]; do
  # tell the user how many things are left on the command line
  echo "There are $# things left to process on the command line."
  myargs+=("$1")
  # it tells the user what we did
  echo "Added \'$1\' to the arguments array"
# TASK 1: instead of just adding arguments to an array, use a case statement to recognize some options
#          Options to recognize: -h for help, -v for verbose mode, -d N for debug mode with N being a single digit number
#          If the help option is recognized, print out help for the command and exit
#          If the verbose option is recognized, set a variable to indicate verbose mode is on
#          If the debug optionis recognized, set a variable with the debug level from the number given after the -d on the command line
#             display an error if the user gave the -d option without a single digit number after it
#          Anything that wasn't recognized on the command line should still go into the myargs array
echo "Processing '$1'."
case $1 in
	-h )
    echo 'You added "-h" for help.'
    ;;
    -v )
    echo 'You added "-v" for varbose.'
    ;;
    -d )
	case "$2" in
		[1-5] )
		echo "You added -d for debug level $2."
		shift
		;;
    *)
        echo "The -d option must be followed with a number [1-5]. "
        shift
	esac
    ;;
    *)
    errors=$1
    echo "Error: unkown value $errors"
    ;;
    esac
  shift
  # tell the user we shifted things
  echo "Shifted command line, leaving $# things left to process."
  echo "--------------------------"

done
echo "Done"

# TASK2: display the settings and myargs contents
#         Tell the user if vebose mode is on
#         Tell the user if debug mode is on and if it is, what number it is set to
#         Print out the myargs array with a label