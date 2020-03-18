#!/bin/bash

cd jitsi
${JITSI_BUILD}=$(cat version)

cd jitsi/docker-jitsi-meet

JITSI_RELEASE=testing JITSI_REPO=quadeare make
JITSI_SERVICES="web prosody jicofo jvb" JITSI_BUILD=3729 JITSI_RELEASE=testing JITSI_REPO=quadeare make release