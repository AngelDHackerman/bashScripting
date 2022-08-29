#!/bin/bash 

# Author: Angel Hernandez 
# Date: 23/08/2022
# Description: This script will ping multiple remote hosts and notify

#192.168.1.1  this Ip is your gateway. 

hosts="/home/angel/shellScripting/realLifeScripts/myHosts"

for ip in $(cat $hosts)  # todo: in this way you can iterate the ip's in this file.

do
    ping -c1 $ip &> /dev/null  # ? &> /dev/null, with this the output is not shown on screen.

        if [ $? -eq 0 ]  # * check if the output of the command is "positive"
        then 
            echo the hosts $ip is: OK 
        else 
            echo the hosts $ip is: NOT OK
        fi
done