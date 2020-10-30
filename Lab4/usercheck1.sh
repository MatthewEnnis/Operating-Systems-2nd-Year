#!/bin/sh
i=0
for x in `who`
do
	if [ $x = $1 ] || [ $i -gt 0 ]
	then
		echo "$x"
		i=$(($i+1))
	fi
	if [ $i -gt 3 ]
	then
		break
	fi
done
