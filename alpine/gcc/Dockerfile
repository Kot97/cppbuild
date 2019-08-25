#TODO : file with files to build

FROM alpine

LABEL author="Marcin Kurdziel <cpp17build@gmail.com>"
LABEL version="1.3"
LABEL github="https://github.com/Kot97/cppbuild"

RUN apk update && \ 
    apk add --no-cache \
    gcc \
    make \
    musl-dev \
    linux-headers

ENTRYPOINT [ "/bin/sh" ]