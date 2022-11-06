import os

new_hostname = input("Enter your new hostname (name of your PC): ")

with open('/etc/hostname', 'r') as hostname:
    hostname_contents = hostname.read()

old_hostname = hostname_contents.strip()

hostname_contents = hostname_contents.replace(old_hostname, new_hostname)

with open('hostname', 'w') as hostname:
    hostname.write(hostname_contents)

os.system("sudo mv hostname /etc")
print("System must be restarted for new changes to be applied.")