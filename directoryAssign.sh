#!/bin/bash 

# Author: Angel Hernandez 
# Description: This script will check the directories in /home and check if it is assign to a user
# Date: 24/08/2022

cd /home
for DIR in *  # ? this will find all the files and directories in /home
do
  CHK=$(grep -c "home/$DIR" /etc/passwd)  # ? it will grep the files/diretoried found in /home and then will check if the match with the /etc/passwd file.
  if [ $CHK -ge 1 ]  # ? -ge 1  stands for: if greater than 1. it is why we used grep -c
    then 
      echo "${DIR} is assigned to a user"
    else
      echo "${DIR} is NOT assigned to a user"
  fi
done
