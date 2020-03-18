#!/bin/bash

cd jitsi
JITSI_BUILD=$(cat version)

cd docker-jitsi-meet

JITSI_RELEASE=testing JITSI_REPO=quadeare make
JITSI_SERVICES="web prosody jicofo jvb" JITSI_RELEASE=testing JITSI_REPO=quadeare make release