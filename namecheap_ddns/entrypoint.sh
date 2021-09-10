#!/bin/sh
set -u
set -e

setup-timezone -z ${TZ}

echo_time() {
    date +"%F %R - $*"
}

while true;
do
    IP_ADDRESS=$(curl -s https://api.ipify.org)

    echo_time "Current IP: ${IP_ADDRESS}"

    for DDNS_SUBDOMAIN in $@
    do
        echo_time "Attempting to set for ${DDNS_SUBDOMAIN}.${DDNS_DOMAIN}"
        URL="https://dynamicdns.park-your-domain.com/update?host=${DDNS_SUBDOMAIN}&domain=${DDNS_DOMAIN}&password=${DDNS_PASSWORD}&ip=${IP_ADDRESS}"
        echo_time $(curl -s ${URL})
    done

    sleep 600
done;
