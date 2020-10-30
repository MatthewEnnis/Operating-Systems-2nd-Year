#!/bin/sh

while [ 1 ]
do
	format="AirportID: %5s    AirportName: %36s    CityName: %20s    Country: %18s\n"
	while IFS=, read portid portname city country code icao lat long alt time dst tz
	do
		printf "$format" "$portid" "$portname" "$city" "$country"
	done < airport1.csv
	
	echo "\nWould you like to append? [y/n]"
	read choice
	if [ $choice = "y" ]
	then
		echo Airport ID?
		read portid
		echo Name?
		read portname
		echo City?
		read city
		echo Country?
		read country
		echo "$portid,$portname,$city,$country,0,0,0,0,0,0,0,0" >> airport1.csv
	else
		exit 0
	fi
done
