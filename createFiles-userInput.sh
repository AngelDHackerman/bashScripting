#!/bin/bash

# Author: Angel Hernandez
# Date: 24/08/2022

echo 'How many files do you want?'
read t 
echo 
echo 'Please enter the start name of the files?'
read n 

for i in $(seq 1 $t)  # ? $(seq 1 $t), in this way we can iterate through the variable from 1 up to the 'number' of the variable.
do 
  touch $n$i.txt
done