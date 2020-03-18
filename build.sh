#!/bin/bash

cd jitsi
JITSI_BUILD=$(cat version_$0)-$0

cd docker-jitsi-meet

JITSI_RELEASE=$0 JITSI_REPO=quadeare make
JITSI_SERVICES="web prosody jicofo jvb" JITSI_RELEASE=$0 JITSI_REPO=quadeare make release