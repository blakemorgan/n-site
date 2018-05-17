#!/bin/bash

if [ ! $1 ]; then
    echo "No site configuration"
    exit;
fi

if [ -f /etc/nginx/sites-available/$1 ]; then
    if [ ! $(rm /etc/nginx/sites-enabled/$1) ]; then
        exit;
    fi
else
    echo "$1 does not exist as a site configuraiton."
fi