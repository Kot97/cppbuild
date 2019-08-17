FROM alpine:latest

ENV CMAKE_C_COMPILER "/bin/gcc"
ENV CMAKE_CXX_COMPILER "/bin/g++"

MAINTAINER Marcin Kurdziel <cpp17build@gmail.com>

RUN apk update && apk upgrade

RUN apk add g++
RUN apk add make cmake 

CMD cd /cppbuild/build && cmake .. && make