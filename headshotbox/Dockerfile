FROM eclipse-temurin:8
RUN mkdir -p /home/headshotbox
WORKDIR /home/headshotbox

ENV HEADSHOTBOX_VERSION 0.18.2
ENV XDG_CONFIG_HOME /config

RUN dpkg --add-architecture i386 \
    && apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y \
        libc6-i386 \
        wget \
        zip \
        unzip

RUN wget https://github.com/bugdone/headshotbox/releases/download/${HEADSHOTBOX_VERSION}/headshotbox-${HEADSHOTBOX_VERSION}-linux.zip \
    && unzip headshotbox-${HEADSHOTBOX_VERSION}-linux.zip \
    && rm headshotbox-${HEADSHOTBOX_VERSION}-linux.zip \
    && mv headshotbox-${HEADSHOTBOX_VERSION}-linux/* . \
    && rm -r headshotbox-${HEADSHOTBOX_VERSION}-linux/

COPY headshotbox/entrypoint.sh entrypoint.sh
RUN chmod +x headshotbox.sh demoinfogo entrypoint.sh

ENTRYPOINT ./entrypoint.sh
