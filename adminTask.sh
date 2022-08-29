#!/bin/zsh
# Author: Angel Hernandez 
# Date: 08/22/2022
# Description: This script will run basic admin commands
# Date modified: 03/22/2022

echo
echo 'This script will run basic administrative commands'
echo
top | head -15  # ? with head -15 we avoid to get stuck with the script
echo
df -h 
echo 
free -mh
echo
uptime
echo
iostat
echo
echo 'End of script'