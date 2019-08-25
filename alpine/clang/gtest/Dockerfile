FROM alpine

LABEL author="Marcin Kurdziel <cpp17build@gmail.com>"
LABEL version="1.3"
LABEL github="https://github.com/Kot97/cppbuild"

RUN apk update && \
    apk add --no-cache \
        clang \
        cmake \
        g++ \
        git \
        make \
        linux-headers && \
    git clone -b master https://github.com/google/googletest.git && \
    cd googletest && mkdir build && cd build && \
    cmake .. && make && make install && cd ../.. && rm -R googletest && apk del git

ENV buildname "build-alpine-clang-gtest"

COPY build.sh /
RUN chmod +x /build.sh

ENTRYPOINT [ "/build.sh" ]
CMD [ "cppbuild" ]