#!/usr/bin/env bash

trap "echo Caught signal, not exiting" SIGABRT

while true
do
    # Raise a signal - send SIGABRT to ourselves, which normally exits with a stackdump (?)
    echo 'Sending SIGABRT to this process'
    kill -s SIGABRT $$
    sleep 1
done
