#check if a directory exist or not, if exist then exit else make a directory
#!/bin/bash
echo "enter DIRNAME"
read DIRNAME

if [ -d $DIRNAME ]
 then
   echo "directory exist"
   exit 0
 else
   mkdir $DIRNAME  
   echo "directory is created"
fi

