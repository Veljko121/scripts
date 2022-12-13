#!/bin/bash
# This script changes bash to starship pastele preset

sudo apt install curl -y
mdkir -p ~/.config
curl -sS https://starship.rs/install.sh | sh
starship preset pastel-powerline > ~/.config/starship.toml

file="/home/$USER/.bashrc"
line="eval \"\$(starship init bash)\""

if ! grep -Fxq "$line" $file; then
  # If the line is not found, append it to the file
  echo $line >> $file
fi

echo "You can change the color preset by running the following command:"
echo -e "\033[32mpython3 python_scripts/palettes.py python_scripts/palettes/<color>.txt\033[0m"