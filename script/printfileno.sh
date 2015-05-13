# to search a pattern in given file and show its line number also
# enter pattern
# enter filename
# to search if file exist then shearch a pattern in given file and show its line number also
# enter pattern
# enter filename
# to search if file exist then show required information else exit

#!/bin/bash
echo -n "ENTER PATTERN :"
read PATTERN
echo -n "enter FILENAME :"
read FILENAME

if [ -f $FILENAME ]
then
  echo "file exist"
  echo "the content with matching pattern and its line number :"
  awk  "/$PATTERN/{print NR\"\t\" \$0 }" $FILENAME
else
  echo -n "file does not exist"
  exit 0
fi


