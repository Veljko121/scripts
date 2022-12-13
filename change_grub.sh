#!/bin/bash
# This script changes grub to not wait 5s

# Open the grub configuration file in a text editor
sudo sed -i 's/^GRUB_TIMEOUT=.*/GRUB_TIMEOUT=0/' /etc/default/grub

# Update the grub configuration
sudo update-grub
