#!/bin/bash

docker run -i -t -d -p 10000:10000 -p 10001:10001 docker-vps

# docker images 查看镜像列表
# docker logs ContainName 查看日志
# docker exec -it ContainName /bin/bash 进入终端
# docker container stop ContainName && docker container rm ContainName 停止容器, 删除容器
# docker image rm ImageName 删除镜像

# docker start/stop/rm ContainName 直接操作容器
