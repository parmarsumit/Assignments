#insert a line in a file at position which user has entered
#check for file if exist,then ask for line to be inserted and at which position to be entered, else exit
#!/bin/bash


echo "enter FILENAME"
read FILENAME

 if [ -f $FILENAME ]
 then
   echo "file exist"
   echo "enter line to be inserted"
   read LINE
   echo "$LINE" >> $FILENAME  #line and filename are passed by user
   echo "the line is inserted "
 else
   echo "file does not exist"
 fi

