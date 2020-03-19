#!/bin/bash

apt update && apt install -y sudo wget gnupg
wget -qO - https://download.jitsi.org/jitsi-key.gpg.key | sudo apt-key add -
sudo sh -c "echo 'deb https://download.jitsi.org $1/' > /etc/apt/sources.list.d/jitsi-$1.list"
apt-get -y update
mkdir jitsi

JITSI_PACKAGES=(jitsi-meet-web jitsi-meet-prosody jitsi-videobridge jicofo)
JITSI_SERVICES=(web prosody jicofo jvb)

for i in "${!JITSI_PACKAGES[@]}"
do
    SERVICE=${JITSI_SERVICES[i]}
    PACKAGE=${JITSI_PACKAGES[i]}
    VERSION=$(apt-cache show $PACKAGE | grep Version | head -1) && echo ${VERSION//Version:} > jitsi/version_${SERVICE}_$1

    echo "$PACKAGE is under version : "${VERSION//Version:}
done

