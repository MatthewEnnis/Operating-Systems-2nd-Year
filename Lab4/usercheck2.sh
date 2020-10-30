#!/bin/sh
if [ $LOGNAME = $1 ]
then
	echo "You are logged in as $1"
else
	echo "You are not logged in as $1"
fi
