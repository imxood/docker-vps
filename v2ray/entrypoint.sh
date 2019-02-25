#!/bin/bash

VER=4.17.0
UUID=$(curl https://www.uuidgenerator.net/version1/bulk?amount1=1)

V2RAY_PATH="/programs/v2ray"
V2RAY_CONFIG_PATH="/v2ray"

wget -P $V2RAY_CONFIG_PATH -O v2ray.zip http://github.com/v2ray/v2ray-core/releases/download/v$VER/v2ray-linux-64.zip

mkdir -p $V2RAY_PATH

unzip v2ray.zip -d $V2RAY_PATH

cp -f $V2RAY_CONFIG_PATH/config.json $V2RAY_PATH

chmod +x $V2RAY_PATH/v2ray $V2RAY_PATH/v2ctl

sed -i "s/UUID/$UUID/g" $V2RAY_CONFIG_PATH/config.json

$V2RAY_PATH/v2ray
