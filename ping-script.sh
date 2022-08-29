#!/bin/bash 

# Author: Angel Hernandez 
# Date: 23/08/2022
# Description: This script will ping a remote host and notify

#192.168.1.1  this Ip is your gateway. 

hosts="192.168.1.1"

ping -c1 $hosts &> /dev/null  # ? &> /dev/null, with this the output is not shown on screen.

    if [ $? -eq 0 ]  # * check if the output of the command is "positive"
    then 
        echo the hosts $hosts is: OK 
    else 
        echo the hosts $hosts is: NOT OK
    fi