#!/bin/bash

goodbye() {
    echo "See you next time!"
    exit
}

trap goodbye INT TERM

while :; do
    echo "Hello! ${SECONDS} secs elapsed... Debug Time! All the tools you need are ready!"
    sleep 1s
done
