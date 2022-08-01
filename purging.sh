#!/bin/bash
VAR_PATH="/var/log"
LOGS_PATH="/root/logs/"
LS="`ls /root/logs/ | wc -l`"

find $VAR_PATH -type f -mtime +7 -exec cp -p {} /root/logs/ \;
echo "Removing Logs Started at `date +%Y-%m-%d`"
if [[ $LS == "0" ]]
then
	echo "Copying Log files in $LOGS_PATH"
	echo "Copying..."
	find $VAR_PATH -type f -mtime +7 -exec cp -p {} /root/logs/ \;
	echo "* * Run Script Again * *"
else
	echo "* * Purging Logs * *"
	echo "Purging... Logs"
	find  $LOGS_PATH -type f -mtime +7 -exec rm -rf {} \;
fi

if [[ $? == 0 ]]
then
	echo "* * 7 Days Old Logs Removed Successfully * *"
else
	echo "* * Failed to Remove 7 Days Old Logs * *"
fi 
