#! /bin/bash
IP=$(ping -c 1 gicungduoc.ddns.net | awk -F'[()]' '/PING/{print $2}')
HOST="google.com"
cp /etc/hosts ~/hosts.new
sudo sed -i "/$HOST/ s/.*/$IP\t$HOST/g" /etc/hosts.new
cp -f /etc/hosts.new /etc/hosts
