#!/bin/bash 

# Author: Imran Afzal 
# Date: 24/08/2022
# Description: This script will check for files 
# Modified: 24/08/2022

FILES="/etc/passwd
/etc/group
/etc/shadow
/etc/nsswitch/conf
/etc/sshd_ssh_config
/etc/fake"

echo 
for file in $FILES
do
  if [ ! -e $file ]  # ?: ! -e stands for "if the file do not exists"
  then 
    echo "${file} do no exists"
    echo
  fi
done