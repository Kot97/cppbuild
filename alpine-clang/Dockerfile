#TODO : build clang from source and use libc++ and lld

FROM alpine:3.10

LABEL author="Marcin Kurdziel <cpp17build@gmail.com>"
LABEL version="1.2"
LABEL github="https://github.com/Kot97/cppbuild"

RUN apk update && apk add --no-cache \
    clang \
    cmake \
    g++ \
    make

ENV buildname "build-alpine-clang-latest"

COPY build.sh /
RUN chmod +x /build.sh

ENTRYPOINT [ "/build.sh" ]
CMD [ "cppbuild" ]