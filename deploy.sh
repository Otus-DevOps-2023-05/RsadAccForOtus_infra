#!/bin/bash
sudo apt update && sudo apt upgrade
sudo apt install -y git
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install
sudo gem install -y bundler
puma -d
#ps aux | grep puma
#Подключаться из браузера. В строке прописать external_ip:port
