FROM eclipse-temurin:8-alpine
RUN mkdir -p /home/headshotbox
WORKDIR /home/headshotbox

ENV HEADSHOTBOX_VERSION 0.18.2
ENV XDG_CONFIG_HOME /config

RUN apk update && apk add \
    bash \
    wget \ 
    libc6-compat

RUN wget https://github.com/bugdone/headshotbox/releases/download/${HEADSHOTBOX_VERSION}/headshotbox-${HEADSHOTBOX_VERSION}-linux.zip \
    && unzip headshotbox-${HEADSHOTBOX_VERSION}-linux.zip \
    && rm headshotbox-${HEADSHOTBOX_VERSION}-linux.zip \
    && mv headshotbox-${HEADSHOTBOX_VERSION}-linux/* . \
    && rm -r headshotbox-${HEADSHOTBOX_VERSION}-linux/

RUN chmod +x headshotbox.sh demoinfogo

CMD java -jar hsbox-${HEADSHOTBOX_VERSION}-standalone.jar \
    --port 4000
