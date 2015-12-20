# docker_discuz

基于Docker技术，一键安装 Discuz 最新版(X3.2)

Docker官方 php:5.6-apache 镜像缺少mysql支持，故添加之
Discuz! 安装前有一些初始化工作，主要是下载最新版的程序，解压，设置目录权限等

构建：
  docker build -t discuz:x3.2 ./

运行：
  docker run -d --name discuzx3.2 discuz:x3.2 
