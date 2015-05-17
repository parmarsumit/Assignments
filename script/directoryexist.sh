#check if a directory exist or not
#!/bin/bash
echo "enter DIRNAME"
read DIRNAME

if [ -d $DIRNAME ]
 then
   echo "directory exist"
 else
   echo "directory does not exist"
fi

