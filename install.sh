#!/bin/sh

install -m 755 cloud-init /bin/cloud-init
install -m 755 cloud-init.init /etc/init.d/cloud-init
install -m 755 growpart /sbin/growpart
install -m 644 growpart.files /etc/mkinitfs/features.d/growpart.files
