#!/bin/bash
# This script changes the hostname.

# Prompt user for new hostname
read -p "Enter new hostname: " new_hostname

# Set the hostname file
hostname_file="/etc/hostname"

# Set the hosts file
hosts_file="/etc/hosts"

# Set the current hostname
current_hostname=$(hostname)

# Replace the current hostname with the new hostname in the hostname file
sudo sed -i "s/$current_hostname/$new_hostname/g" $hostname_file

# Replace the current hostname with the new hostname in the hosts file
sudo sed -i "s/$current_hostname/$new_hostname/g" $hosts_file

# Set the new hostname
sudo hostname $new_hostname
