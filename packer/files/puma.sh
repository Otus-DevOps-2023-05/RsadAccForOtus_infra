#!/bin/bash
sleep 10
apt-get update
sleep 10
apt install -y git
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install
puma -d
