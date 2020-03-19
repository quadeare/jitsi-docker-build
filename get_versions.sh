#!/bin/bash

apt update && apt install -y sudo wget gnupg
wget -qO - https://download.jitsi.org/jitsi-key.gpg.key | sudo apt-key add -
sudo sh -c "echo 'deb https://download.jitsi.org $1/' > /etc/apt/sources.list.d/jitsi-$1.list"
apt-get -y update
mkdir jitsi

JITSI_SERVICES=(jitsi-meet-web jitsi-meet-prosody jitsi-meet-jvb jicofo)

for service in "${JITSI_SERVICES[@]}"
do
    VERSION=$(apt-cache show $service | grep Version | head -1) && echo ${VERSION//Version:} > jitsi/version_${service//jitsi-meet-}_$1

    echo "$service is under version : " ${VERSION//Version:}
done

