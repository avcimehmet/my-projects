#!/bin/bash

# Check if we are root privilage or not
whoami
# Which files are we going to back up. Please make sure to exist /home/ec2-user/data file
if [[ -e  /home/ec2-user/data ]]; then echo "True"; fi
# Where do we backup to. Please crete this file before execute this script
mkdir /home/ec2-user/mnt/backup
# Create archive filename based on time

# Print start status message.

# Backup the files using tar.

# Print end status message.

# Long listing of files in $dest to check file sizes.

