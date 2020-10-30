#!/bin/sh/

firstname="Paul"
secondname="Malone"
course="DT211"
year="1"

while getopts 'f:s:c:y:' OPTION; do
	case "$OPTION" in
		f) firstname="$OPTARG" ;;
		s) secondname="$OPTARG" ;;
		c) course="$OPTARG" ;;
		y) year="$OPTARG" ;;
	esac
done

echo "Firstname is $firstname"
echo "Secondname is $secondname"
echo "Course is $course"
echo "Year is $year"
