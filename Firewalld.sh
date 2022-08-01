#!/bin/bash
##########################################################################################
# Creater: Rushi                                                                         #
# Version: 1.0                                                                           #
# Date: Jun 24                                                                           #
# Usage:./firewalld.sh                                                                   #
##########################################################################################             

STATUS_FIREWALLD="`systemctl is-active firewalld`"
OUTPUT="unknown"
if [[ $STATUS_FIREWALLD == "active" ]]
then
    echo "* * Status of Firewalld * *"
    `systemctl status firewalld`
    echo "* * Stopping... Service firewalld * *"
    `systemctl stop firewalld`
    echo "* * Firewall Service Stopped Successfully * *"
else
    echo "* * Firewall Service Already Stopped * *" 
fi    