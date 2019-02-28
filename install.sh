#!/bin/bash

# install docker and other tools
if [ -z "$(which docker)" ]; then
	sudo apt install -y curl git unzip wget
	curl -sSL https://get.daocloud.io/docker | sh
fi

# download and extract the v2ray.zip
V2RAY_PATH="v2ray"

if [ ! -f "v2ray.zip" ]; then
	wget -O v2ray.zip http://github.com/v2ray/v2ray-core/releases/download/v$VER/v2ray-linux-64.zip
fi

rm -rf $V2RAY_PATH && mkdir -p $V2RAY_PATH

unzip v2ray.zip -d $V2RAY_PATH
chmod +x $V2RAY_PATH/v2ray $V2RAY_PATH/v2ctl

# 生成docker image
bash build_docker.sh

echo "install successfully!"
