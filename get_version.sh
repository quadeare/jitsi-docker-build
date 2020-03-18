#!/bin/bash

apt update && apt install -y sudo wget gnupg
wget -qO - https://download.jitsi.org/jitsi-key.gpg.key | sudo apt-key add -
sudo sh -c "echo 'deb https://download.jitsi.org testing/' > /etc/apt/sources.list.d/jitsi-testing.list"
apt-get -y update
VERSION=$(apt-cache show jitsi-meet | grep Version | head -1) && echo ${VERSION//Version:} > /root/jitsi/version
cat /root/jitsi/version