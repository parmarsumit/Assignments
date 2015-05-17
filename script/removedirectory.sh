#check if a directory exist or not, if exist then remove
#!/bin/bash
echo "enter DIRNAME"
read DIRNAME

if [ -d $DIRNAME ]
 then
   echo "directory exist"
   rm -rf $DIRNAME
   echo "directory is removed"
 else
   echo "directory does not exist"
fi

