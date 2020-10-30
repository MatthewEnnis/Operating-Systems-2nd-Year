#!/bin/sh

finduser() {
addlog 1
echo Please enter name:
read name
grep $name /etc/passwd
}

listfiles() {
addlog 2
ls | sort
}

diskusage() {
addlog 3
df -h
}

viewlog() {
addlog 4
cat logfile.txt
}

addlog() {
echo "$LOGNAME" >> logfile.txt
date >> logfile.txt
echo "Menu Option $1" >> logfile.txt
echo "" >> logfile.txt
}

rm logfile.txt
touch logfile.txt

while [ 1 ]
do
	echo ""
	echo [1] Find user
	echo [2] List files alphabetically
	echo [3] Disk usage
	echo [4] View Log File
	echo [5] Exit
	echo ""
	read choice
	echo ""
	case $choice in
		1) finduser ;;
		2) listfiles ;;
		3) diskusage ;;
		4) viewlog ;;
		5) echo "Now exiting"
		   exit 0 ;;
		*) echo "Unrecognized input, please try again"
	esac
done
