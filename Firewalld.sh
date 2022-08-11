#!/bin/bash
##########################################################################################
# Creater: Rushi                                                                         #
# Version: 1.0                                                                           #
# Date: Jun 24                                                                           #
# Usage:./firewalld.sh                                                                   #
##########################################################################################             

DEV_NULL="/dev/null"
systemctl is-active firewalld > $DEV_NULL

if [[ $? -eq 0 ]]
then
        
        echo "Firewall is Running on node `hostname`"
        echo "Stopping..."
        systemctl stop firewalld
else
        echo "Firewall is Already Stopped on node `hostname`"
fi

if [[ $? -eq "0" ]]
then
        echo "Firewall Stopped Successfully"
fi
