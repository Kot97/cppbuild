#TODO : build clang from source and use libc++ and lld

FROM alpine:latest

LABEL maintainer="Marcin Kurdziel <cpp17build@gmail.com>"
LABEL version="1.2"
LABEL github="https://github.com/Kot97/cppbuild"

RUN apk update && apk upgrade
RUN apk add make cmake 

RUN apk add g++
RUN apk add clang

ENV buildname "build-alpine-clang-latest"

ADD build.sh /
RUN chmod +x /build.sh

ENTRYPOINT [ "/build.sh" ]
CMD [ "cppbuild" ]