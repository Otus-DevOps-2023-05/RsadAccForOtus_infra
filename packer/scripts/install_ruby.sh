#!/bin/bash

#Обновляем APT и устанавливаем Ruby и Bundler:
sleep 10
sudo apt update && sudo apt upgrade
sudo apt install -y ruby-full ruby-bundler build-essential

#Проверить установку можно этими командами
#ruby -v
#bundler -v
