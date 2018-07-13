#!/usr/bin/env bash

# trap [COMMANDS] [SIGNALS]
# There are tricks with executing commands...
# See http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_12_02.html

trap "echo Caught signal, not exiting." SIGINT

echo "Catch SIGINT - Ctrl+C will not terminate this process"
echo "pid is $$"

while true
do
    sleep 1
done
