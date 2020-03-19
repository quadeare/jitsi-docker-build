#!/bin/bash

cd jitsi/docker-jitsi-meet

JITSI_RELEASE=${1} JITSI_REPO=quadeare make

JITSI_SERVICES=(web prosody jicofo jvb)

for service in "${JITSI_SERVICES[@]}"
do
    docker tag quadeare/${service} quadeare/jitsi-${service}
    docker tag quadeare/${service} quadeare/jitsi-${service}:$(cat ../version_${service}_${1})-${1}
    docker tag quadeare/${service} quadeare/jitsi-${service}:${1}
    docker push quadeare/jitsi-${service}
    docker push quadeare/jitsi-${service}:$(cat ../version_${service}_${1})-${1}
    docker push quadeare/jitsi-${service}:${1}
done
