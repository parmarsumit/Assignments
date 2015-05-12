#show all file names in a directory with their size
 
#take directory name from user
#check directory name (if t exist then show all the files inside it with their size else exit)
#!/bin/bash
echo -n "enter DIRNAME :"
read DIRNAME

if [ ! -d $DIRNAME ]
 then 
      echo "dir does not exist. "
      exit 0
 else 
      echo "dir exist"
      echo "The files with their name and size :"
      ls -al $DIRNAME| egrep -v '^d'|tail --line=+2|awk '{print  $5,"\t"$9}'
fi 
