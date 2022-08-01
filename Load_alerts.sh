#!/bin/bash
##########################################################################################
# Creater: Rushi                                                                         #
# Version: 1.0                                                                           #
# Date: Jun 24                                                                           #
# Usage:./Load_alerts.sh                                                                   #
##########################################################################################
SOCKET="`lscpu | grep Socket | awk '{print$2}'`"
CORE="`lscpu | grep Core | awk '{print$4}'`"
THREADS="`lscpu | grep Thread | awk '{print$4}'`"

#Formula of Calculating Load on machine 
# Total load = SOCKETxCORExTHREADS


TOTAL_LOAD=$((SOCKET*CORE*THREADS))

#All Load Data are Saved in "/proc/loadavg" file with 5 mins 10 mins and 15 mins.

LOAD_FILE=`cat /proc/loadavg | awk '{print$1}' | cut -c 1`

function LOAD_MAIL () {
echo "Hello All,
  
      This is system generated e-mail, Do not reply this e-mail.
      Load Average on Host `/bin/hostname` are reached to threshold.
      kindly take neccessary action As Soon As Possible to avoid furture Inconvenice.
      
    
      Server name:- `hostname`
      IP Address :-`ifconfig | grep inet | head -n 1 | awk '{print$2}'`
      
Thanks & Regards
Team Cloudethix"
      }

if [[ $LOAD_FILE -gt $TOTAL_LOAD ]]
then
    LOAD_MAIL
else
    echo "Load Average on host `hostname` is normal"
fi