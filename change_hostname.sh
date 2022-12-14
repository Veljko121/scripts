#!/bin/bash
# This script changes the hostname.

# Set the hostname file and the hosts file
hostname_file="hostname"
hosts_file="hosts"

# Prompt user for new hostname
read -p "Enter new hostname: " new_hostname

# Get the current hostname
read -r current_hostname < <(cat "/etc/$hostname_file")

# Copy files to the home directory
cp "/etc/$hostname_file" ~
cp "/etc/$hosts_file" ~

# Replace the specified string in the copied file using sed
sed -i "s/$current_hostname/$new_hostname/g" ~/"$hostname_file"

# Replace the specified string in the copied file using sed
sed -i "s/$current_hostname/$new_hostname/g" ~/"$hosts_file"

# Replace the old file with the new one
sudo mv ~/"$hostname_file" "/etc/$hostname_file"
sudo mv ~/"$hosts_file" "/etc/$hosts_file"

echo "Hostname successfully changed. To save the changes reboot the system."