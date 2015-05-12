
#Create a script to create an empty file

#an empty file was created a1
#further modifications were done i.e..user entered directory name file name
#then condition were inserted if file doesnt exist then create file and if file exist then notifies file already exist.

#!/bin/bash
echo -n "enter directory > "
read dirname
if [ -d "$dirname" ];
then
echo "directory $dname exists"
else 
echo "directory $dname does not exist. creating now"
mkdir $dirname
echo "directory created"
fi
echo -n "enter file name > "
read filename
if [ -f $dirname/$filename ];
then
echo "file $file  exists"
else
echo "file $file does not exist. creating now" 
touch $dirname/$filename
echo  "file created"
fi
