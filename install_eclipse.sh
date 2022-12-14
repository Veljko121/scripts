#!/bin/bash

# Update package manager
sudo apt-get update

# Install Java
sudo apt-get install default-jdk

# Download Eclipse
wget http://mirror.cc.columbia.edu/pub/software/eclipse/eclipse/downloads/drops4/R-4.16-202006041800/eclipse-platform-4.16-linux-gtk-x86_64.tar.gz

# Extract Eclipse
tar -xzf eclipse-platform-4.16-linux-gtk-x86_64.tar.gz

# Move Eclipse to /opt
sudo mv eclipse /opt

# Create a symbolic link
sudo ln -s /opt/eclipse/eclipse /usr/local/bin/eclipse

# Clean up
rm eclipse-platform-4.16-linux-gtk-x86_64.tar.gz
