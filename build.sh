#!/bin/bash

cd jitsi
JITSI_BUILD=$(cat version_$1)-$1

cd docker-jitsi-meet

JITSI_RELEASE=$1 JITSI_REPO=quadeare make
JITSI_SERVICES="web prosody jicofo jvb" JITSI_RELEASE=$1 JITSI_REPO=quadeare make release