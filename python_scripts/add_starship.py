import os
from functions import get_username


bashrc_path = "/home/" + get_username() + "/.bashrc"

with open(bashrc_path, 'r') as bashrc:
    contents = bashrc.read()

new_contents = contents + '\neval "$(starship init bash)"\n'

with open(bashrc_path, 'w') as bashrc:
    bashrc.write(new_contents)