FROM ubuntu:18.04

LABEL "org.opencontainers.image.title"="Ventis Build Image"
LABEL "org.opencontainers.image.description"="Build image for the Ventis VM2000 respirator"
LABEL "org.opencontainers.image.vendor"="Dojo Five"
LABEL "org.opencontainers.image.authors"="Martin Wellard"

RUN apt-get update && \
	apt-get install -y --no-install-recommends \
	gcc-arm-linux-gnueabihf=4:7.4.0-1ubuntu2.3 \
	libc6-dev-armhf-cross=2.27-3ubuntu1cross1.1 \
	linux-libc-dev-armhf-cross=4.15.0-35.38cross1.1 \
	make=4.1-9.1ubuntu1 \
	libssl-dev=1.1.1-1ubuntu2.1~18.04.13 \
	libarchive-dev=3.2.2-3.1ubuntu0.7  \
	&& apt-get clean \
 	&& rm -rf /var/lib/apt/lists/*

ADD sysroot.tar.gz /

ENV CC=arm-linux-gnueabihf-gcc
ENV LDFLAGS=--sysroot=/sysroot
ENV CPPFLAGS=--sysroot=/sysroot
