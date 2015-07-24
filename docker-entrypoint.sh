#!/bin/bash

echo "yo:$SSH_PASSWORD"|chpasswd
/etc/init.d/mongodb start
/etc/init.d/dropbear start
chown yo:yo /home/yo /home/yo/app
cd /home/yo/app
cp -f /bin/true node_modules/open/vendor/xdg-open || true
IP=0.0.0.0 grunt serve || true
sudo -u yo /bin/bash
