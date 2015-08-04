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
  xen-utils-4.5 \
  qemu-system-x86 \
  gcc-multilib \
  vim \
  file \
  genisoimage \
  make

COPY . /usr/src/rumprun

ENV PATH=$PATH:/usr/src/rumprun/app-tools

WORKDIR /usr/src/rumprun

RUN \
  git submodule update --init && \
  ./build-rr.sh hw
#RUN \
#  ./tests/buildtests.sh x86_64 hw elf && \
#  ./tests/runtests.sh qemu
