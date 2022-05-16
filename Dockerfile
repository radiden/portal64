FROM debian:latest

ENV DEBIAN_FRONTEND noninteractive
ENV BLENDER_2_9 /usr/bin/blender
ENV N64_LIBGCCDIR /opt/crashsdk/lib/gcc/mips64-elf/11.2.0
ENV ROOT /etc/n64

WORKDIR /p64
COPY . /p64

RUN apt-get -y update && \
    apt-get -y install ca-certificates && \
    dpkg --add-architecture i386 && \
    echo "deb [trusted=yes] https://crashoveride95.github.io/apt/ ./" | tee /etc/apt/sources.list.d/n64sdk.list && \
    apt-get update && apt-get upgrade && \
    apt-get -y install imagemagick imagemagick libpng-dev libtiff-dev python3 pip blender build-essential \
                       git binutils-mips-n64 gcc-mips-n64 newlib-mips-n64 makemask libassimp-dev \
                       root-compatibility-environment n64sdk && \
    PATH=$PATH:/opt/crashsdk/bin; export PATH && \
    pip install vpk && \
    git clone https://github.com/eXeC64/vtf2png "tools/vtf2png" && \
    cd "tools/vtf2png" && make && cd "../.." && \
    git clone https://github.com/lambertjamesd/skelatool64 "tools/skeletool64" &&\
    cd "tools/skeletool64" && make && cd "../.." && \
    make