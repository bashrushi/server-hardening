#!/bin/bash
##########################################################################################
# Creater: Rushi                                                                         #
# Version: 1.0                                                                           #
# Date: Jun 24                                                                           #
# Usage:./firewalld.sh                                                                   #
##########################################################################################

while :
clear
echo "Current Hostname $(hostname) of Machine"
echo "-----------------------------------"
echo "Choose Between 1-4"
echo "-----------------------------------"
echo "1. Date and Hostname Of Server"
echo "2. Network Route"
echo "3. Network Activity"
echo "4. Exit"
read -p "Enter number Between 1-4:-" choice

do

case $choice in
        1)
        echo "Date is $(date) and Hostname is $(hostname)"
        read "Press [Enter Key] to Continue" choice1
                ;;
        2)
        netstat -tunlp
        read "Press [Enter Key] to Continue" choice2
                ;;
        3)
        lastb
        read "Press [Enter Key] to Continue" choice3
                ;;
        4)
        echo "Bye!"
        exit
                ;;
        *)
        echo "Invalid option"
esac
done
