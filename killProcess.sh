#!/bin/bash 

# Author: Angel Hernandez 
# Date: 25/08/2022
# Description: This script will find dead or zombie processes and kill them.
# Modified: 25/08/2022

ps -ef | grep "sleep 600" | grep -v grep | awk '{print $2}' | xargs -I{} kill -9 {}  # ? "sleep 600", you can put whatever other process name there.
