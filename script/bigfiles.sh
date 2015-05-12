#show all file names in a directory, whose size is greaer than the specified size, with their size

#take directory name from user
#check directory name (if it exist, then take size of file from user and show all the files inside it greater than specified size  with their size else exit)
#!/bin/bash
echo -n "enter DIRNAME :"
read DIRNAME

if [ ! -d $DIRNAME ]
 then
      echo "dir does not exist. "
      exit 0
 else
      echo "dir exist"
      echo -n "enter SIZEOFFILE :"
      read SIZEOFFILE
      echo "The files with their name and size :"
      ls -al $DIRNAME|tail --line=+4|awk -v sof=$SIZEOFFILE '{ if ($5 > sof )  print  $5,"\t"$9}'
fi
