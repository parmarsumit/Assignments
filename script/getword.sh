#to get the word from a specified position and specified line in a file
#check for file if exist,then ask for line number whose word user want to see , if file not present then exit
#if line exist,then ask for position of word which user want to see, if line does not present then exit
#if position exist, then print the word situated at that position, if position not present then exit
#!/bin/bash
source functions.sh   #through this check_line fuction is called from some other file

echo "enter FILENAME"
read FILENAME

 if [ -f $FILENAME ]
 then
   echo "file exist"
   echo "enter the line number whose word you want to see "
   read LINE
   check_line $FILENAME $LINE   #filename and line number are passed by user

   echo  "enter the position of word u want to see"
   read POSITION 
   words=`head "-$LINE" $FILENAME | tail -1 | wc -w` #count words of a line whose line number is entered by user
    if [ "$POSITION" -gt "$words" ]
    then 
      echo "no such position" 
      exit 0
    else
      head "-$LINE" $FILENAME | tail -1 | awk -v pos=$POSITION '{print $pos}' # this line is used to print that word
    fi
   
 else
   echo "file does not exist"
 fi

