#!/bin/bash
#
# This script creates a new user on the local system.
# You will be prompted to enter the username (login), the person name, and a password.
# The username, password, and host for the account will be displayed.

# Make sure the script is being executed with superuser privileges.


# Get the username (login).
read -p "Enter user name (login): " USERNAME

# Get the real name (contents for the description field).
read -p "Enter your real name: " NAME
# Get the password.
read -s -p "Enter your real password: " PASSWORD

# Create the account.
sudo useradd -m -d /home/$USERNAME -c "$NAME's account" $USERNAME 
# Check to see if the useradd command succeeded.
# We don't want to tell the user that an account was created when it hasn't been.
if [[ $? -eq 0 ]]
    then
        echo "Account created"
else
    echo "Account NOT created"
fi
# Set the password.
sudo passwd $USERNAME
# Check to see if the passwd command succeeded.
echo $?
# Force password change on first login.

# Display the username, password, and the host where the user was created.
tail -1 /etc/passwd