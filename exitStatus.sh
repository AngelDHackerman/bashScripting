#!/bin/zsh 

ls -l /home/angel/shellScripting/basics/hola.txt

if [ $? -eq 0 ]  # ! $? is a special variable in shell that reads the exit status of the last command executed.
then 
    echo File exists
else
    echo File does not exists
fi
