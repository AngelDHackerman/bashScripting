#!/bin/bash 

# Author: Imran Afzal 
# Date: 24/08/2022
# Description: This script will rename files ending with .txt 
# Modified: 24/08/2022

for filename in *.txt
do
  mv $filename ${filename%.txt}.none  # ! this % is necessary to do the substitution.
done