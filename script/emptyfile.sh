#!/bin/bash
#an empty file was created 
#further modifications were done i.e..user entered directory name file name
#then condition were inserted if directory name  exist then create directory and if directory exist then  notifies directory already exist.
#then condition were inserted if file doesnt exist then create file and if file exist then notifies file already exist.
echo -n "Enter directory name < "
read DIRNAME

echo "$dirname"
if [ ! -d "$dirname" ]
then
    echo "dir doesn't exist. Creating now"
    mkdir ./$dirname
    echo "dir created"
else
    echo "dir exists"
fi

echo -n "enter file name < "
read filename
echo "$filename"

if [ -f $dirname/$filename ];
then 
	echo "file $filename exist"
else 
	echo "file $filename doesnt exist"
	touch $dirname/$filename
	echo "file created < "
fi
