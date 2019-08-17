#!/bin/sh

if [ ! -d /$1/$buildname ]; then
    mkdir /$1/$buildname
fi

cd /$1/$buildname && cmake .. && make