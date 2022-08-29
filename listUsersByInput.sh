#!/bin/bash

# Author: Angel Hernandez
# Date: 08/24/2022
# Description: This script will list users logged in by user's input

echo "Please enter day (e.g. Mon)"
read d
echo
echo "Please enter month (e.g. Aug)"
read m
echo 
echo "Please enter date (e.g. 28, *5)"
read da
echo

# ? last | grep 'Fri Aug 12'
# ! last | grep 'Fri Aug *5'
last | grep "$d $m $da"