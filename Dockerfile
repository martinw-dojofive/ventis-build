FROM ubuntu:18.04

LABEL "org.opencontainers.image.title"="Ventis Build Image"
LABEL "org.opencontainers.image.description"="Build image for the Ventis VM2000 respirator"
LABEL "org.opencontainers.image.vendor"="Dojo Five"
LABEL "org.opencontainers.image.authors"="Martin Wellard"

RUN apt-get update && \
	apt-get install -y --no-install-recommends \
	gcc-arm-linux-gnueabihf \
	make \
	libssl-dev \
	libarchive-dev  \
	&& apt-get clean \
 	&& rm -rf /var/lib/apt/lists/*

ADD sysroot.tar.gz /

ENV CC=arm-linux-gnueabihf-gcc
ENV LDFLAGS=--sysroot=/sysroot
ENV CPPFLAGS=--sysroot=/sysroot
