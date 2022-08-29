#!/bin/bash 

# Author: Angel Hernandez 
# Date: 25/08/2022
# Description: this script will verify total number of files
# Modified: 25/08/2022

a=`ls -l file* | wc -l`

if [ $a -eq 20 ]
  then 
    echo Yes there are $a fixfiles
  else
    echo Files are less than 20
fi
