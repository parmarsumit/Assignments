#check if a file exist or not, if exist then remove
#!/bin/bash
echo "enter FILENAME"
read FILENAME

if [ -f $FILENAME ]
 then
   echo "directory exist"
   rm $FILENAME
   echo "file is removed"
 else
   echo "file does not exist"
fi
