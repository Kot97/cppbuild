FROM alpine:latest

LABEL version="1.0"
LABEL author="Marcin Kurdziel <cpp17build@gmail.com>"
LABEL github="https://github.com/Kot97/cppbuild"

ENV CMAKE_C_COMPILER "/bin/gcc"
ENV CMAKE_CXX_COMPILER "/bin/g++"

RUN apk update && apk upgrade

RUN apk add g++
RUN apk add make cmake 
RUN apk add gtest
RUN apk add gmock

CMD cd /cppbuild/build && cmake .. && make && ctest