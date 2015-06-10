FROM ubuntu:15.04

MAINTAINER Justin Cormack <justin@specialbusservice.com>

RUN apt-get update && apt-get install -y \
  binutils \
  cpp \
  curl \
  g++ \
  gcc \
  git \
  libc6-dev \
  strace \
  gawk \
  libxen-dev \
  xen-utils-common \
  vim \
  file \
  genisoimage \
  make

COPY . /usr/src/rumprun

ENV PATH=$PATH:/usr/src/rumprun/app-tools

RUN \
  cd /usr/src/rumprun && \
  git submodule update --init && \
  ./build-rr.sh xen
