#!/bin/sh

export CC=/usr/bin/gcc
export CXX=/usr/bin/g++

if [ $1 = "nobuild" ]; then
    sh -i
else
    if [ ! -d /$1/$buildname ]; then
        mkdir /$1/$buildname
    fi
    cd /$1/$buildname && cmake .. && make && ctest

    if [ ! -z $2 ] && [ $2 = "noexit" ]; then
        sh -i
    fi
fi