#!/bin/bash

# Author: Angel Hernandez 
# Date: 25/08/2022
# Description: This script will add system inventory to database file
# Modified: 25/08/2022

      # Check the hostname

echo Please enter hostname:
read host
echo

  grep -q $host /home/angel/shellScripting/realLifeScripts/createSystemInventory/database
  if [ $? -eq 0 ]  # ? if the exit status of previous command equals: success.
    then 
      echo ERROR -- Hostname $host already exist
      echo
      exit 0  # this makes the program to finish
  fi

      # Check the IP address

echo Please enter the IP address:
read IP
echo

  grep -q $IP /home/angel/shellScripting/realLifeScripts/createSystemInventory/database
  if [ $? -eq 0 ]  # ? if the exit status of previous command equals: success.
    then 
      echo ERROR -- IP $IP already exist
      echo 
      exit 0  # this makes the program to finish
  fi



      # Adding host, ip and description

echo Please enter a Description:
read description
echo

echo $host $IP $description >> /home/angel/shellScripting/realLifeScripts/createSystemInventory/database
echo The provided record has been added
echo


