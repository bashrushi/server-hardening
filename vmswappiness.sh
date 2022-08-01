#!/bin/bash
##########################################################################################
# Creater: Rushi                                                                         #
# Version: 1.0                                                                           #
# Date: Jun 24                                                                           #
# Usage:./vmswappiness.sh                                                                   #
##########################################################################################             

VMSWAPPINESS="`cat /proc/sys/vm/swappiness`"
SWAPPINESS="/proc/sys/vm/swappiness"
if [[ $VMSWAPPINESS == 30 ]]
then   
    echo "* * Value of VMSWAPPINESS is 30 * * "
    echo "Changing from 30 to 10"
    echo "10" > $SWAPPINESS
else  
    echo "* * VMswappiness Value is already 10"
fi  

CAT=`cat /proc/sys/vm/swappiness`
 
if [[ $CAT == "10" ]]
then  
      echo "* * VMSWAPPINESS Value Changed Successfully * *"
else  
      echo  "* * Failed to Change Value * *"
fi
