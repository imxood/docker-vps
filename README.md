# docker-vps

1. 在vps中，先安装git

  git clone https://github.com/imxood/docker-vps.git
  
2. 执行:
  
  cd docker-vps && bash install.sh
  
  #会自动下载docker，并根据当前目录的Dockerfile创建一个docker镜像.
  
  
3. 如果2执行顺利, 执行:

  bash run_docker.sh
  
  #即可成功运行docker容器
