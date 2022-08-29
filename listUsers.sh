#!/bin/bash 

# Author: Angel Hernandez
# Date: 08/24/2022
# Description: This script will list users logged in by date

today=`date | awk '{print $1, $2, $3}'`  # awk '{print $1, $2, $3}' imprime solo las columnas 1, 2, 3 del output de date
last | grep  "$today"