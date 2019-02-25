#!/bin/bash

VER=4.17.0
cd /v2ray
wget -O v2ray.zip http://github.com/v2ray/v2ray-core/releases/download/v$VER/v2ray-linux-64.zip
mkdir -p /programs/v2ray
unzip v2ray.zip -d /programs/v2ray
cp -f /v2ray/config.json /programs/v2ray
chmod +x v2ray v2ctl
sed -i "s/your_uuid/$UUID/g" config.json
./v2ray
