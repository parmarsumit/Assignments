#to move a file from source folder to target folder
#check for sourcefolder, if exist then check for file in that folder, if foler does not exist then exit
#if file exist in source folder, then check for destination folder , if file does not exist then exit
#if destination folder exist then move file, else exit
#!/bin/bash
echo "enter SOURCEFOLDER"
read SOURCEFOLDER

echo "enter DESTINATIONFOLDER"
read DESTINATIONFOLDER

if [ -d $SOURCEFOLDER ]
then 
echo "source folder exist"
   
   echo "enter FILENAME"
   read FILENAME
   if [ -f $SOURCEFOLDER/$FILENAME ];
   then    
   echo "file exist"
           
           if [ -d $DESTINATIONFOLDER ]
           then 
           mv $SOURCEFOLDER/$FILENAME $DESTINATIONFOLDER
           echo "file moved"
           else
           echo "destinationfolder does not exist"
           exit 0
           fi
   
   else 
   echo "file does not exist"
   exit 0
   fi
 
else
echo "sourcefolder does not exist"
exit 0
fi
