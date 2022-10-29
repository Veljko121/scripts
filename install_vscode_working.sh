#!/bin/bash

sudo apt update
sudo apt install gnupg2 software-properties-common apt-transport-https curl
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code