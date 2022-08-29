#!/bin/bash 

# author: Angel Hernandez 
# Date: 08/23/2022
# Description: This script will pull only Error messages from the journalctl
# then it gives you the total line numbers and it create a new file with the outpu information.
# Modified: 08/23/2022

journalctl | grep -i error

journalctl | grep -i error > errorsJournalctl.txt

journalctl | grep -i error | wc -l