#!/bin/sh
echo "Enter file name please: "
read filename
if test -f $filename
then
	echo "File found"
else
echo "File not found"
fi
