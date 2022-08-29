#!/bin/zsh 
# This script is created by me ;)

echo 
echo Plese chose one of the options below
echo
echo 'a = Display date and time'
echo 'b = List file and directories ordered by creation date'
echo 'c = List users logged in'
echo 'd = Check System uptime'
echo

read choices

case $choices in

    a) date;;
    b) ls -ltr;;
    c) who;;
    d) uptime;;
    *) echo Invalid choice - Bye.

esac