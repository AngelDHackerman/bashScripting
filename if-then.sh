#!/bin/zsh 

clear

count=1
if [ $count -eq 100 ]  # ? -eq stands for 'equials'
then
    echo Count is 100
else
    echo Count is not 100
fi

if [ -e /home/angel/shellScripting/hola.txt ]  # ? -e stands for 'exists'

    then 
        echo 'File exist !!!'
    else
        echo 'File does not exists'
fi