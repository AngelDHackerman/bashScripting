#!/bin/bash 

# Author: Angel Hernandez 
# Date: 24/08/2022
# Description: This script will copy files to remote hosts

a=`cat /home/hostList` # redhatHost1 redhatHos2 redhatHost3 

#for i in redhatHost1 redhatHos2 redhatHost3 
for i in $a
do
  scp someFileYouWant.txt $i:/tmp
done