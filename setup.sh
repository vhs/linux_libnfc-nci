#!/bin/sh

if [ -f ./configure ] && [ "$1" != "-f" ]; then
    echo "Project has already been configured. Please run make clean before running bootstrap."

    exit
fi

if [ "$1" = "-f" ]; then
    shift
fi

./bootstrap && exec "$@"
