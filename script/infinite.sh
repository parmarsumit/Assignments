#!/bin/bash
# to create infinte files of 1kb till the disk get out of space and then remove all the files from it.
check_space()
{
space=`df -a | awk 'NR==2{print $4}'`
}
echo "space available on disk"
check_space
echo "$space"
while :
do 
if [ "$space" -ne "0" ]
then 
fallocate -l 1k ${RANDOM}.txt  #create text file of 1kb
check_space
echo "$space"
else
echo "space on disk is full"
check_space
echo "$space"
break
fi
done
find -name "*.txt" -size 1k -delete  # find and delete text file of 1kb
echo "space available on disk"
check_space
echo "$space"
