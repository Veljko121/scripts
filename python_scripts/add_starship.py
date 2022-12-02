import os

bashrc_path = f"/home/{os.getlogin()}/.bashrc"

with open(bashrc_path, 'r') as bashrc:
    contents = bashrc.read()

new_contents = contents + '\neval "$(starship init bash)"\n'

with open(bashrc_path, 'w') as bashrc:
    bashrc.write(new_contents)