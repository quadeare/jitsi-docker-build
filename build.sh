#!/bin/bash

cd jitsi
JITSI_BUILD=$(cat version_$1)-$1

cd docker-jitsi-meet

JITSI_RELEASE=$1 JITSI_REPO=quadeare make

JITSI_SERVICES=(web prosody jicofo jvb)

for service in "${JITSI_SERVICES[@]}"
do
    docker tag quadeare/${service} quadeare/jitsi-${service}
    docker tag quadeare/${service} quadeare/jitsi-${service}:${JITSI_BUILD}
    docker push quadeare/jitsi-${service}
    docker push quadeare/jitsi-${service}:${JITSI_BUILD}
done