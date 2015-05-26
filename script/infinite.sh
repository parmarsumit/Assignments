#!/bin/bash
#to create infinte files of 1gb till the disk get out of space and then remove all the files from it.
echo "space available on disk"
space=`df -a | awk 'NR==2{print $4}'`
echo "$space"
while :
do 
if [ "$space" -ne "0" ]
then 
fallocate -l 1G ${RANDOM}.txt  #create text file of 1gb
space=`df -a | awk 'NR==2{print$4}'`
echo "$space"
else
echo "space on disk is full"
space=`df -a | awk 'NR==2{print$4}'`
echo "$space"
break
fi
done
find -name "*.txt" -size 1G -delete  # find and delete text file of 1gb
echo "space available on disk"
space=`df -a | awk 'NR==2{print$4}'`
echo "$space"
