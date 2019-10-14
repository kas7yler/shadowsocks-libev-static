#!/bin/sh

set -e

name=shadowsocks-libev
source_url=${url}/releases/download/v${ver}/${name}-${ver}.tar.gz
arch=$(arch)
pkgname=${name}-${arch}-linux-musl-static-v${ver}-${rel}

cd /build

curl -O -L ${source_url}
gunzip *.tar.gz && tar xf *.tar
cd ${name}-${ver}

export CFLAGS="-Os -static -static-pie -static-libgcc"
export LDFLAGS="-Wl,-static"
./configure --disable-documentation
make -j4

strip src/ss-* ||:
zip /build/${pkgname}.zip src/ss-*

echo "Successfully built: /build/${pkgname}.zip"
