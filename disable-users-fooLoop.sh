#!/bin/bash 

# Author: Angel Hernandez 
# Date: 25/08/2022
# Description: This script will disable inactive user accounts with for loop
# Modified: 25/08/2022

# * a=`lastlog -b 90 | tail -n+2`  # This will show the users logged in OVER the last 90 days
a=`lastlog | tail -n+2 | grep 'test' | awk '{print $1}'`  # ? tail -n+2 will show the output from the 2 line; grep 'test' will look for the user "test", 

for i in $a
do
  usermod -L $i  # ? usermod -L: Lock a user's password. This puts a '!' in front of the encrypted password, effectively disabling the password. You can't use this option with -p or -U.
done