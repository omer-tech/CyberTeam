#!/bin/bash

# Checks all running cron jobs for all users on local machine
# cat is used to print the file, tr replaces all colons with a space
# and awk is used to print only the first field $1, which is the 
# username. crontab must have sudo prefixed to show that data.


for username in $(cat /etc/passwd | tr ":" " " | awk '{print $1 }'); 
do 
  sudo crontab -u $username -l; 
done
