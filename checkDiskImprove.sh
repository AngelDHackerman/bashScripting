#!/bin/bash 

# Author: Angel Hernandez
# Date: 25/08/2022
# Description: This 2nd script will check for disk space 
# Modified: 25/08/2022

df -H | grep -vE '^Filesystem|tmpfs|sr0|chrom' | awk '{print $5,$1}' | while read varOutput  # ? while will insert the output of the command intot he variable 'varOutput'
do
  usep=$( echo $varOutput | awk '{print $1}' | cut -d'%' -f1 )  # ? this will remove the '%' of the percentage output
  partition=$( echo $varOutput | awk '{print $2}' )

  if [ $usep -ge 90 ]
    then
      echo "Runing out of space \"$partition ($usep%)\" on $(hostname) as on $(date)"
    else
      echo 'All Disk partitions are ok, below 90%'
      exit
  fi
done
