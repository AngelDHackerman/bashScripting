#!/bin/bash 

# Author: Angel Hernandez
# Date: 25/08/2022
# Description: this script will check for disk space 
# Modified: 25/08/2022

a=`df -h | egrep -v "tmpfs|devtmpfs|sr0" | tail -n+2 | awk '{print $5}' | cut -d'%' -f1`  # ? cut -d'%' -f1`, -d'%' is the delimiter and -f1 is the number of characters to remove.

for i in $a
do
  if [ $i -ge 90 ]  # ? -ge stands for "greater than"
    then
      echo Check disk `df -h | grep $i` space! It has used: $i%
    else
      echo Disk has enough space. It has used: $i%
  fi
done