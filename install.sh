#!/bin/sh

echo "installing dependencies"
apk add parted

echo "installing files"
install -m 755 cloud-init /bin/cloud-init
install -m 755 cloud-init.init /etc/init.d/cloud-init
install -m 755 growpart /sbin/growpart

echo "activating cloud-init"
rc-update add cloud-init
