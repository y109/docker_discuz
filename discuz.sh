#!/bin/bash

sudo rm -rf docs
sudo rm -rf html
mkdir docs
cd docs
wget http://download.comsenz.com/DiscuzX/3.2/Discuz_X3.2_SC_UTF8.zip
unzip Discuz_X3.2_SC_UTF8.zip
cp -a ./upload ../html

cd ../html/
sudo chmod a+w -R config data uc_server/data uc_client/data
cd ..

pwd

sudo docker build -t dzphp ./
sudo rm -rf db && mkdir db
sudo docker rm -f dzdb
sudo docker run -d --name dzdb -e MYSQL_ROOT_PASSWORD=root -v "$PWD/db" mysql:5.5 &
sudo docker run -p 8083:80 -it --rm --name discuz --link dzdb:db -v "$PWD/html":/var/www/html dzphp

