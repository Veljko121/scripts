#!/bin/bash
# This script changes the hostname.

# Prompt user for new hostname
read -p "Enter new hostname: " hostname

# Set the new hostname
sudo hostnamectl set-hostname $hostname

# Update the /etc/hosts file
sudo sed -i "s/127.0.1.1.*/127.0.1.1 $hostname/g" /etc/hosts

# Print the new hostname
echo "The new hostname is: $hostname"
