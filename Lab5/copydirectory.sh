#!/bin/sh
if [ $# -eq 2 ]
then
	if [ -d $1 ]
	then
		if [ -d $2 ] || [ -f $2 ]
		then
			echo "$2 already exists"
		else
			cp -r $1 $2
			echo "Folder $1 copied to $2"
		fi
	else
		echo "$1 is not a valid directory"
	fi
else
	echo "Incorrect amount of arguments"
fi
