#!/bin/bash 

# Author: Angel Hernandez 
# Date: 25/08/2022
# Description: This script will disable inactive user accounts with for Xargs command
# Modified: 25/08/2022

# ? this do exactly the same has the command above but without the for loop.

lastlog | tail -n+2 | grep 'test' | awk '{print $1}' | xargs -I{} usermod -L {}

# xargs -I{} stands for: Whatever comes in form the output do: usermod -L {}