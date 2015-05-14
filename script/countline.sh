# to count number of line in a file
#enter file name if it exist then show number of line, else exit
#!/bin/bash
echo "enter FILENAME"
read FILENAME

if [ -f $FILENAME ]
then 
  echo "file exist"
  echo -n "the number of line in a file : " 
  wc -l $FILENAME | awk '{print $1}'
else 
  echo "file does not exist"
  exit 0
fi
