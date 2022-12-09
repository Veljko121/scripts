import sys
import re
import random
import os
from functions import get_username


def get_new_palette(palette_filename: str):
    with open(palette_filename) as palette:
        palette_new = [color.upper() for color in palette.read().split()]
    return palette_new

def get_random_palette(number_of_colors : int):
    return ["".join(random.sample("0123456789ABCDEF", 6)) for i in range(number_of_colors)]

def swap_colors(palette_old, palette_new, contents):
    palette_random = get_random_palette(number_of_colors=6)
    # swapping with random colors first to avoid same colors, because they can mess up the file
    for old_color, random_color in zip(palette_old, palette_random):
        contents = contents.replace(old_color, random_color)
    for random_color, new_color in zip(palette_random, palette_new):
        contents = contents.replace(random_color, new_color)
    return contents

def main():
    if len(sys.argv) != 2:
        raise("Invalid number of arguments. Usage: python3 pallete.py <color>.txt")

    palette_filename = sys.argv[1]

    starship_toml_path = f"/home/{os.getlogin()}/.config/starship.toml"

    # read from starship.toml
    with open(starship_toml_path, 'r') as toml:
        contents = toml.read()

    # get new colors from the palette that was an argument
    palette_new = get_new_palette(palette_filename)

    # get odl colors from the starship.toml file
    temp = re.findall("[0-9A-F]{6}", contents)
    palette_old = [temp[0], temp[1], temp[4], temp[6], temp[8], temp[10]]

    contents = swap_colors(palette_old, palette_new, contents)

    # write new contents to starship.toml
    with open(starship_toml_path, 'w') as toml:
        toml.write(contents)


if __name__ == "__main__":
    main()