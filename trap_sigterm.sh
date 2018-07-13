#!/usr/bin/env bash

# trap [COMMANDS] [SIGNALS]
# There are tricks with executing commands...
# See http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_12_02.html

trap "echo Caught signal, not exiting." SIGTERM

echo "Catch SIGTERM - kill will not terminate this process"
echo "pid is $$"

while true
do
    # echo'd message from trap will display after the sleep period elapses
    sleep 1
done
