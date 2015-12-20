# docker_discuz

基于Docker技术，一键安装 Discuz 最新版(X3.2)

Docker官方 php:5.6-apache 镜像缺少mysql支持，故添加之
Discuz! 安装前有一些初始化工作，主要是下载最新版的程序，解压，设置目录权限等

使用方法：
  - git clone 本项目
  - 执行 ./discuz.sh
  - 默认的端口是 8083 可以修改 discuz.sh 脚本改变
  - 注意：每次执行 ./discuz.sh 脚本都会自动删除当前目录下的 html 等文件

运行环境：
   Ubuntu12.02
