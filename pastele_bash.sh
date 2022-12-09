#!/bin/bash
# This script changes bash to starship pastele preset

sudo apt install curl -y
curl -sS https://starship.rs/install.sh | sh
starship preset pastel-powerline > ~/.config/starship.toml
python3 python_scripts/add_starship.py

echo "You can change the color preset by running the command:"
echo
echo "python3 python_scripts/palettes.py python_scripts/palettes/<color>.txt"