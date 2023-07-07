#!/bin/bash
sleep 10
apt update
sleep 10
apt upgrade
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
sleep 10
apt-get update
sleep 10
apt-get install -y mongodb-org
systemctl start mongod
systemctl enable mongod

#Проверить работоспособность можно этой командой
#sudo systemctl status mongod
