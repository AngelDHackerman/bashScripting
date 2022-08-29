#!/bin/bash 

# Author: Angel Hernandez
# Date: 25/08/2022
# Description: This script will look for all the files ending in .sh and then it can replance the word selected.
# Modified: 25/08/2022

# ? find ./*.sh -type f stands for: Find all the .sh ending files that its type is a file.
# ? 's/oldWord/newWord/gI'

find ./*.sh -type f -exec sed -i 's/zsh/bash/gI' {} \; 