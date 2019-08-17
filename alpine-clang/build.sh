#!/bin/sh

export CC=/usr/bin/clang
export CXX=/usr/bin/clang++

if [ $1 = "nobuild" ]; then
    sh -i
else
    if [ ! -d /$1/$buildname ]; then
        mkdir /$1/$buildname
    fi
    cd /$1/$buildname && cmake .. && make

    if [ ! -z $2 ] && [ $2 = "noexit" ]; then
        sh -i
    fi
fi