#!/bin/bash

# Author: Angel Hernandez
# Date: 24/08/2022

total=`ls -l angel* | wc -l`
echo "It will take ${total} seconds to assign permissions"

for i in angel*
do
  echo Assigning execute permissions to $i
  chmod a+x $i 
  sleep 1
done