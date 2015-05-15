#insert a line in a file 1 position before which user has entered
#check for file if exist,then ask for line to be inserted and at which position to be entered, else exit
#after entering position it will check if there are sufficient lines then it will insert that line before that position, else exit
#!/bin/bash
check_line() #number of lines are checked through this function
{
fileNAME=$1
position=$2
lines=`wc -l $fileNAME | awk '{ print $1 }'`
 
 if [ "$position" -gt "$lines" ]
 then
   echo "there is no such position"
   exit 0
 fi
}

echo "enter FILENAME"
read FILENAME

 if [ -f $FILENAME ]
 then
   echo "file exist"
   echo "enter line to be inserted"
   read LINE
   echo "the line is to be inserted 1 position before, so enter the position"
   read POSITION
((POSITION=POSITION-1))
  check_line $FILENAME $POSITION   #filename and position are passed by user
  sed -i "${POSITION}i$LINE" $FILENAME  #position,line and filename are passed by user
   echo "the line is inserted 1 position before"
 else 
   echo "file does not exist"
 fi

