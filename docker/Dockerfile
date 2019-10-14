FROM docker.io/library/alpine

LABEL homepage="github.com/kas7yler/shadowsocks-libev-static"

ENV url="https://github.com/shadowsocks/shadowsocks-libev"
ENV ver="3.3.2"
ENV rel=2

RUN apk add --no-cache curl zip build-base \
 linux-headers gettext pkgconfig mbedtls-dev mbedtls-static libsodium-dev libsodium-static pcre-dev libev-dev c-ares-dev

COPY build.sh /build/

CMD ["/build/build.sh"] 
