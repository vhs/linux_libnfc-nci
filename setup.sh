#!/bin/sh

if [ -f ./configure ] && [ "$1" != "-f" ]; then
    echo "Project has already been configured. Please run make clean before running bootstrap."

    exit
fi

./bootstrap
