#!/usr/bin/env bash

# after scan for open ports with nmap
# found open ports 80 and 22

# after send a form post request, and intercept with burpsuite we realize Path traversal injection is posible, so we go for the user flag
#http://titanic.htb/download?ticket=/etc/passwd

# after check passwd file we found user developer, so we spaw the user flag
#http://titanic.htb/download?ticket=/home/developer/user.txt

# after make a wfuzz atack, we found the a new subdomain
# wfuzz -u http://titanic.htb -w /usr/share/seclists/Discovery/DNS/subdomains-top1million-5000.txt -t 200 -H "Host: FUZZ.titanic.htb" --sc 200

# after send a form post request, and intercept with burpsuite we realize Path traversal injection is posible, so we go for the user flag

# http://titanic.htb/download?ticket=/home/developer/user.txt

# with the same technique we go to the gitea database and download it
# http://titanic.htb/download?ticket=/home/developer/gitea/data/gitea/gitea.db

# crack the database passwords with hashcat

# make a ssl connection with the developer credentials

# after check for vulnerabilities, we found an script in /opt/scripts
# injects the ImageMagic vulverability, from injecting file
# and force the vulnerability to run
# cp home.jpg home2.jpg

# go to the /tmp folder and check for the root flag

