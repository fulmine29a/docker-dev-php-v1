#!/usr/bin/env bash

service mysql start

if [ -f /root/needinit ]; then

    echo 'init.. please wait';

    mysql < /root/init.sql

    if [ -f /dump/dump.sql ]; then
        mysql < /dump/dump.sql
    fi

    rm -f /root/needinit
fi

echo 'ready';