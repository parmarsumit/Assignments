#to sync the content of source folder to target folder
#enter the source folder and destination folder
#if source folder exist then sync the contents of source folder to target folder, else exit 
#!/bin/bash
echo "enter SOURCEFOLDER"
read SOURCEFOLDER

echo "enter DESTINATIONFOLDER"
read DESTINATIONFOLDER

if [ -d $SOURCEFOLDER ]
 then 
    echo "folder exist"
    rsync -rtv $SOURCEFOLDER/ $DESTINATIONFOLDER
    echo "content is synced"
 else 
    echo "sourcefolder does not exist"
    exit 0
fi
