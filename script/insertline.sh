#enter line in a file if line does not exist
#check for file if file exist,then check for line to be inserted,else exit
#check for line if line exist then exit else insert the line at the end of file
#!/bin/bash
echo "enter FILENAME"
read FILENAME
 
if [ -f $FILENAME ]
then 
  echo "file exist"
  
echo "enter line u want to insert"
read LINE

  if grep -Fxq "$LINE" $FILENAME  #passing LINE and FILENAME as a variable
  then 
    echo "line already exist"
    exit 0
  else 
    echo "the line is inserted"
    sed -i "\$a $LINE" $FILENAME  #passing LINE and FILENAME as a variable
  fi

else 
  echo "file does not exist"
fi

