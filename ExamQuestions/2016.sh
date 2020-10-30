#!/bin/sh
echo "Enter file name"
read file
if [ -f $file ]
then
	echo "Success"
	exit
fi
echo "Failure"
