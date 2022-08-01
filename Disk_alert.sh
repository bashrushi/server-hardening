#!/bin/bash
##########################################################################################
# Creater: Rushi                                                                         #
# Version: 1.0                                                                           #
# Date: Jun 24                                                                           #
# Usage:./firewalld.sh                                                                   #
##########################################################################################

function Disk_alert() {

echo "Hello ALl,

        This is system generated email, Do not reply this email
        Disk Has Been Utlize above 80%.
        Kindly take neccessary action to avoid furture inconvience.

        Server     :-`hostname`
        IP Address :-`ifconfig | grep inet | head -n 1 | awk '{print $2}'`

Thanks & Regards
Team CloudEthix."
}

WARINING='80'
TOTAL=$(df -h / | tail -n 1 | awk '{print$5}' | cut -c 1,2)
PERCENTAGE="$(($WARINING*$TOTAL/100))"

if [ $PERCENTAGE -ge $WARINING ]
then
        echo "***Warning***"
        Disk_alert
else