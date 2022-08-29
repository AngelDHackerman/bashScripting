#!/bin/bash

# Author: Angel Hernandez 
# Date: 26/08/2022
# Description: This script will ask to add or delete a record from database from database file.
# Modified: 26/08/2022

clear 

echo
echo 'Please select one of the following options:'
echo 
echo 'a = Add a record'
echo 'd = Delete a record'
echo

  read choice
  case $choice in

    a) /home/angel/shellScripting/realLifeScripts/createSystemInventory/add-record.sh;;
    d) /home/angel/shellScripting/realLifeScripts/createSystemInventory/del-record.sh;;
    *) echo Invalid choice - Bye.

  esac
