#!/bin/bash
echo -n "click enter for empty file > "
read enter
echo -n "enter directory > "
read dname
if [ -d "$dname" ];
then
echo "directory $dname exists"
else 
echo "directory $dname does not exist. creating now"
mkdir $dname
echo "directory created"
fi
echo -n "enter file name > "
read filename
if [ -f $dname/$filename ];
then
echo "file $file  exists"
else
echo "file $file does not exist. creating now" 
touch $dname/$filename
echo  "file created"
fi
