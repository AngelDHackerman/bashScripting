#!/bin/zsh 
# This script is created by Angel Hernandez on 2022

count=0
num=10

while [ $count -lt 10 ]  # ? -l stands for 'less than'
do
    echo
    echo $num seconds left to stop this process $1  # $1 might be any ID number of the proccess in execution.
    echo
    sleep 1  # sleep pause the program for X seconds

num=`expr $num - 1`  # ? expr, is for create aritmetical operations with integers and variables$. 
count=`expr $count + 1`
done

echo
echo $1 proccess is stropped!!!
echo
