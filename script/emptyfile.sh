#!/bin/bash
#an empty file was created 
#further modifications were done i.e..user entered directory name file name
#then condition were inserted if directory name  exist then create directory and if directory exist then  notifies directory already exist.
#then condition were inserted if file doesnt exist then create file and if file exist then notifies file already exist.
echo -n "Enter directory name < "
read DIRNAME

echo "$DIRNAME"
if [ ! -d "$DIRNAME" ]
then
    echo "dir doesn't exist. Creating now"
    mkdir ./$DIRNAME
    echo "dir created"
else
    echo "dir exists"
fi

echo -n "enter file name < "
read FILENAME
echo "$FILENAME"

if [ -f $DIRNAME/$FILENAME ];
then 
	echo "file $FILENAME exist"
else 
	echo "file $FILENAME doesnt exist"
	touch $DIRNAME/$FILENAME
	echo "file created < "
fi
