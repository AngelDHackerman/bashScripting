#!/bin/bash

# Author: Angel Hernandez 
# Date: 26/08/2022
# Description: This script will remove system inventory to database file
# Modified: 26/08/2022

      # Check the hostname or IP 

echo Please enter the server\'s IP address to delete:
read hostIP
echo

  grep -q $hostIP /home/angel/shellScripting/realLifeScripts/createSystemInventory/database
  if [ $? -eq 0 ]
    then
      echo 
      sed -i '/'$hostIP'/d' /home/angel/shellScripting/realLifeScripts/createSystemInventory/database
    # ? sed -i, ignore upper or lower case. '/wordToDelete/d' the final d stands for delete that line
      echo $hostIP has been deleted!!!
    else
      echo Record $hostIP does not exist
  fi