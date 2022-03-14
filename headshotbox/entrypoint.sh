#!/bin/bash

COMMAND="java -jar hsbox-${HEADSHOTBOX_VERSION}-standalone.jar --port 4000"

if [ -z ${HEADSHOTBOX_ADMIN_STEAMID64+x} ]
then
    echo "No admin SteamID provided, running in unsecured mode."
else
    echo "Admin SteamID provided: ${HEADSHOTBOX_ADMIN_STEAMID64}"
    COMMAND="${COMMAND} --admin-steamid ${HEADSHOTBOX_ADMIN_STEAMID64}"

    if [ -z ${HEADSHOTBOX_OPENID_REALM+x} ]
    then
        echo "ERROR - Admin SteamID provided but HEADSHOTBOX_OPENID_REALM was not provided!"
        exit 1
    else
        echo "OpenID Realm provided: ${HEADSHOTBOX_OPENID_REALM}"
        COMMAND="${COMMAND} --openid-realm ${HEADSHOTBOX_OPENID_REALM}"
    fi
fi

echo COMMAND: ${COMMAND}
eval ${COMMAND}
