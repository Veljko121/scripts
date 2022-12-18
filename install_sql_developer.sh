#!/bin/bash

sudo apt-get update
sudo apt install wget -y

# Download SQL Developer
wget https://download.oracle.com/otn_software/linux/sqldeveloper/20.2.0.175.1759/sqldeveloper-20.2.0.175.1759-no-jre.zip

# Unzip the downloaded file
unzip sqldeveloper-20.2.0.175.1759-no-jre.zip

# Install the unzip package (if it is not already installed)
sudo apt-get install unzip -y

# Install Oracle Java Development Kit (JDK)
sudo apt-get install default-jdk -y

# Set the JAVA_HOME environment variable
echo 'export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"' >> ~/.bashrc
source ~/.bashrc

# Create a symbolic link to the sqldeveloper.sh script
ln -s /path/to/sqldeveloper/sqldeveloper.sh /usr/local/bin/sqldeveloper

# Make the sqldeveloper.sh script executable
chmod +x /path/to/sqldeveloper/sqldeveloper.sh
