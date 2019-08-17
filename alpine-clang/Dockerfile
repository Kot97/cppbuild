FROM alpine:latest

LABEL version="1.1"
LABEL author="Marcin Kurdziel <cpp17build@gmail.com>"
LABEL github="https://github.com/Kot97/cppbuild"

ENV CMAKE_C_COMPILER /usr/bin/clang
ENV CMAKE_CXX_COMPILER /usr/bin/clang++

ENV build-name "build-alpine-clang-latest"

RUN apk update && apk upgrade

RUN apk add g++      
#TODO : do version with lld without gcc
RUN apk add clang
RUN apk add make cmake 

CMD if [ ! -d /cppbuild/${build-name} ]; then \
        mkdir /cppbuild/${build-name}; fi \
    && cd /cppbuild/${build-name} && cmake .. && make