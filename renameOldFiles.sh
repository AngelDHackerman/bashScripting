#!/bin/bash 

# Author: Angel hernandez 
# Date: 24/08/2022
# Description: This script will rename files .txt older than 90 days 
# Modified: 24/08/2022

# todo: touch -d 'Thu, 1 January 2018 12:30:00' oldFileTestA.txt, witht his command you create a file with a different creation date.

find /home/angel/*.txt -mtime +90 -exec ls -l {} \; 

# ? -mtime +90, means that find files modified in more than 90 days. 
# ? -exec ls -l, means that script has to execute the command ls -l 
# ? {} \; is a standar way to return a result. 

find /home/angel/*.txt -mtime +90 -exec mv {} {}.old \; 

# ? mv {} {}.old \; this "moves" whatver is returned to a new file with .old at the endcd 