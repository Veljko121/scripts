#!/bin/bash
# This script changes grub to not wait 5s

python3 python_scripts/change_grub.py
sudo mv grub /etc/default
sudo update-grub