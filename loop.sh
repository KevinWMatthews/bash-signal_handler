#!/usr/bin/env bash

COUNTER=0
while true; do
    echo $COUNTER
    sleep 1
    COUNTER=$((COUNTER+1))
done
