#to delete line from a file and line number is given by the user
#check filename
#if does not exist then exit
#if exist then ask which line to be deleted, if line is present then delete it,else exit

#!/bin/bash
check_lines() #function to check file name
{
fileNAME=$1  #variable to pass FILENAME
line=$2  #variable to pass line number N

lines=`wc -l $fileNAME | awk '{ print $1 }'` 

if [ "$line" -gt "$lines" ]
then  
  echo "the line u want to delete is not there"
  exit 0
fi  
}

echo "enter FILENAME"
read FILENAME
echo "which line u want to delete"
read N 
if [ -f $FILENAME ]
then
  echo "file exist"
  check_lines $FILENAME $N
  sed -i "${N}d" $FILENAME 
  echo "line is deleted"
else 
  echo "file does not exist"
  exit 0
fi

