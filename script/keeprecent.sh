#!/bin/bash


#script to delete all the files in a folder except those which are recent(number of recent files are told by user)files
#enter foldername,  if exist then change directory to that folder and ask for number of recent files to be kept, if folder does not exist then exit
#checkfiles function is called to check number of files in that folder if number of files in that folder is less than number of files to be kept then exit, else it will remove all other files other than recent 
check_files()
{
files_to_keep=$1
number_of_files=`find . -type f | wc -l`
if [ "$files_to_keep" -gt "$number_of_files" ]
then 
echo "not sufficient files"
exit 0 
fi
}

echo  "enter FOLDERNAME"
read FOLDERNAME
if [ -d $FOLDERNAME ]
then 
echo "folder exist"
cd $FOLDERNAME
echo "enter the number of recent files to be kept"
read RECENTFILES
check_files $RECENTFILES 
((RECENTFILES=RECENTFILES+1))
rm `ls -t | tail  -n +$RECENTFILES`
else
echo "foldername does not exist"
fi

