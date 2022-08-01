#!/bin/bash

if [[ $# -eq "0" ]]
then
        echo "---------------------------------------"
        echo "Enter argunment"
        echo "---------------------------------------"
        echo "Usage:$0 zip | gzip | bzip "
        echo "---------------------------------------"
        exit
fi
case $1 in
        zip)
        echo "Creating... zip file"
        zip 1.zip /root/compressed/hostname /root/compressed/hosts /root/compressed/passwd
        ;;
        gzip)
        echo "Creating... Gzip file"
        tar -cvzf 1.gz /root/compressed/hostname /root/compressed/hosts /root/compressed/passwd
        ;;
        bzip)
        echo "Creating... Bzip file"
        tar -cvjf 1.bz /root/compressed/hostname /root/compressed/hosts /root/compressed/passwd
        ;;
        *)
if [[ $? -eq 1 ]]
then
        echo "Failed to Compress Files using $1 Exit Status with 1"
elif [[ $? -eq 2 ]]
then
        echo "Failed to Compress Files using $1 Exit Status with 2"
fi
esac
