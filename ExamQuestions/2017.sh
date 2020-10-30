#!/bin/sh/
echo "Enter password"
read password
while [ $password != "dublin" ]
do
	echo "Try again"
	read password
done
echo "Success"
