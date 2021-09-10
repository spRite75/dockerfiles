FROM alpine

RUN apk update && apk add alpine-conf curl

COPY ./entrypoint.sh /tmp/entrypoint.sh
RUN chmod +x /tmp/entrypoint.sh

CMD /bin/sh -c "/tmp/entrypoint.sh ${DDNS_SUBDOMAINS}"
