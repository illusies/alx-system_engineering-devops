#!/usr/bin/env bash
# A Bash (init) script 101-manage_my_process that manages manage_my_process

if [ "$1" = "start" ]
then
    ./manage_my_process &
    echo $! >> /var/run/my_process.pid
    echo "manage_my_process started"
elif [ "$1" = "stop" ]
then
    xargs kill < "/var/run/my_process.pid"
    rm ./my_process.pid
    echo "manage_my_process stopped"
elif [ "$1" = "restart" ]
then
    xargs kill < "/var/run/my_process.pid"
    rm /var/run/my_process.pid
    ./manage_my_process &
    echo $! >> /var/run/my_process.pid
    echo "manage_my_process restarted"
else
    echo "Usage: manage_my_process {start|stop|restart}"
fi
