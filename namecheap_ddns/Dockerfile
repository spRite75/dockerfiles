FROM alpine

RUN apk update && apk add alpine-conf curl

COPY ./entrypoint.sh /tmp/entrypoint.sh
RUN chmod +x /tmp/entrypoint.sh

ENV DDNS_DOMAIN "example.com"
ENV DDNS_SUBDOMAINS "example sub www"
ENV DDNS_PASSWORD "changeme"
ENV TZ "Etc/UTC"

CMD /bin/sh -c "/tmp/entrypoint.sh ${DDNS_SUBDOMAINS}"
