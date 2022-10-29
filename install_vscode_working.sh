#!/bin/bash
# This script installs Visual Studio Code
# according to https://linuxize.com/post/how-to-install-visual-studio-code-on-debian-10/

sudo apt update
sudo apt install gnupg2 software-properties-common apt-transport-https curl
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code