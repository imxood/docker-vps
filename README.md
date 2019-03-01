# docker-vps

1. 在vps中，

	apt install -y git vim

	git clone https://github.com/imxood/docker-vps.git
	
	cd docker-vps
  
2. 修改配置

	vim etc/v2ray/v2ray_config.json, 主要参数是port和password

3. 执行:
  
	bash install.sh
  
	# 会自动下载docker，并根据当前目录的Dockerfile，创建一个docker镜像.
  
  
4. 如果3执行顺利, 执行:

	bash run_docker.sh
  
	# 即可成功运行docker容器
