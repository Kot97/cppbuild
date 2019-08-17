FROM alpine:latest

LABEL maintainer="Marcin Kurdziel <cpp17build@gmail.com>"
LABEL version="1.1"
LABEL github="https://github.com/Kot97/cppbuild"

RUN apk update && apk upgrade
RUN apk add make cmake 

#TODO : do version with lld without gcc
RUN apk add g++      

ENV CMAKE_C_COMPILER /usr/bin/clang
ENV CMAKE_CXX_COMPILER /usr/bin/clang++
RUN apk add clang

ENV buildname "build-alpine-clang-latest"

ADD build.sh /
RUN chmod +x /build.sh

ENTRYPOINT [ "/build.sh" ]
CMD [ "cppbuild" ]