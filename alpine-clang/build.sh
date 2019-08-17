#!/bin/sh

if [ $1 = "nobuild" ]; then
    sh -i
else
    if [ ! -d /$1/$buildname ]; then
        mkdir /$1/$buildname
    fi
    cd /$1/$buildname && cmake .. && make
fi