!/bin/bash

# Checks for all cron jobs under all users

for user in $(getent passwd | cut -f1 -d: ); do echo $user; crontab -u $user -l; done
