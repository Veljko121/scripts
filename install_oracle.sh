#!/bin/bash

sudo apt update
sudo apt install unzip -y
sudo apt install rpm -y

# Create a new user for the Oracle database
sudo useradd -m -d /home/oracle -s /bin/bash oracle

# Download Oracle Express 11g
wget https://download.oracle.com/otn_software/linux/express/oracle11g/xe/oracle-xe-11.2.0-1.0.x86_64.rpm.zip

# Unzip the downloaded file
unzip oracle-xe-11.2.0-1.0.x86_64.rpm.zip

# Install Oracle Express 11g
sudo rpm -i oracle-xe-11.2.0-1.0.x86_64.rpm

# Configure Oracle Express 11g
/etc/init.d/oracle-xe configure

# Start the Oracle database
service oracle-xe start

# Set the ORACLE_HOME and PATH environment variables
sudo echo 'export ORACLE_HOME="/u01/app/oracle/product/11.2.0/xe"' >> /home/oracle/.bashrc
sudo echo 'export PATH=$ORACLE_HOME/bin:$PATH' >> /home/oracle/.bashrc
source /home/oracle/.bashrc

# Set the password for the SYS and SYSTEM users
echo "ALTER USER SYS IDENTIFIED BY ftn;" | sqlplus -S sys/change_on_install AS SYSDBA
echo "ALTER USER SYSTEM IDENTIFIED BY ftn;" | sqlplus -S sys/change_on_install AS SYSDBA
