import os

with open('/etc/default/grub', 'r') as grub:
    grub_contents = grub.readlines()

for i, line in enumerate(grub_contents):
    if 'GRUB_TIMEOUT=' in line:
        grub_contents[i] = 'GRUB_TIMEOUT=0\n'

with open('grub', 'w') as grub:
    for line in grub_contents:
        grub.write(line)

os.system("sudo mv grub /etc/default")
os.system("sudo update-grub")