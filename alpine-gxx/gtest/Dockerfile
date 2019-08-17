FROM alpine:3.10

LABEL author="Marcin Kurdziel <cpp17build@gmail.com>"
LABEL version="1.2"
LABEL github="https://github.com/Kot97/cppbuild"

RUN apk update && \
    apk add --no-cache \
    cmake \
    g++ \
    gmock \
    gtest \
    make

ENV buildname "build-alpine-gxx-gtest-latest"

COPY build.sh /
RUN chmod +x /build.sh

ENTRYPOINT [ "/build.sh" ]
CMD [ "cppbuild" ]