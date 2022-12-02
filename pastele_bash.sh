#!/bin/bash
# This script changes bash to starship pastele preset

starship preset pastel-powerline > ~/.config/starship.toml

echo "You can change the color preset by running the command:"
echo
echo "python3 python_scripts/palettes.py python_scripts/palettes/<color>.txt"