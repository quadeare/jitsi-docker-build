#!/bin/bash

apt update && apt install -y sudo wget gnupg
wget -qO - https://download.jitsi.org/jitsi-key.gpg.key | sudo apt-key add -
sudo sh -c "echo 'deb https://download.jitsi.org $0/' > /etc/apt/sources.list.d/jitsi-$0.list"
apt-get -y update
mkdir jitsi
VERSION=$(apt-cache show jitsi-meet | grep Version | head -1) && echo ${VERSION//Version:} > jitsi/version_$0
cat jitsi/version_$0