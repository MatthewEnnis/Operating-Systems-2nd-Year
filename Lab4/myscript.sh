#!/bin/sh
if [ $# -eq 0 ]
then
	echo "ERROR: No arguments supplied"
else
	echo "The number of arguments: $#"
	echo "The arguments: $*"
	i=1
	for arg in $*
	do
		echo "Argument $i is $arg"
		i=$(($i+1))
	done
fi
