#! /bin/bash

user_check()
{
    if [ $EUID -ne 0 ]; then
        echo "You must be root."
        exit 1
    fi
}
