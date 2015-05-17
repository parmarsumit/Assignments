#to check if a file exist or not
#!/bin/bash
echo "enter FILENAME"
read FILENAME

if [ -f $FILENAME ]
 then
   echo "file exist"
 else 
   echo "file does not exist"
fi
