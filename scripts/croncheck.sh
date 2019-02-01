#!/bin/bash

# Checks all running cron jobs for all users on local machine

for user in $(cut -f1 -d: /etc/passwd); do crontab -u $user -l; done
