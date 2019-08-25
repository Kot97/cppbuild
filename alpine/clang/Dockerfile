FROM alpine

LABEL author="Marcin Kurdziel <cpp17build@gmail.com>"
LABEL version="1.3"
LABEL github="https://github.com/Kot97/cppbuild"

RUN apk update && \
    apk add --no-cache \
    clang \
    cmake \
    g++ \
    make \
    linux-headers

ENV buildname "build-alpine-clang"

COPY build.sh /
RUN chmod +x /build.sh

ENTRYPOINT [ "/build.sh" ]
CMD [ "cppbuild" ]