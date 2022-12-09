import os


def get_username():
    filename = "username.txt"
    os.system(f"whoami >> {filename}")
    with open(filename, 'r') as file:
        username = file.read().strip()
    os.remove(filename)
    return username