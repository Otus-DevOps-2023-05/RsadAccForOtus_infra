#!/bin/bash


useradd -m -s /bin/bash yc-user
mkdir /home/yc-user/.ssh
sudo echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCxPN7S+kEuGh6mq7ltsBhfy3hlL0e2jfC+3vzURZVkZjN1cuGVl8nHIqTUkdGpLrHmIojj8U5dBSdCNMiUOW6spVepZR0NqOqnsNRuLZ0k6AcIBotYr/ey7cn4f7i5DSuttCpq69h3tlfXBffRmVXM4X8AaSU1quALnJNkLtuZbaZ9SURgiMY+AGs+NC3vt9XrD5350LUsDWpFDbDCR4H/+L2nGVlIj8CsKjE8MIBqRYv+Ejuq/IbMhQRiHRIFMDDTzGAHv+R/qSrFL2usEOT1nYrFIHvGhPCx2fnAayaTpKqrz9f4Ql2ElvnSaxYajGq/WMIMj1FmEyqg0K1SN7HogvmyN3cuI1lhvg6k1BFKyeGQGkFweSU6yN4uOuGjhXJq3QkypgueBhz9s74JYQMILw3UmuFpit9ZtUFVtknqCCy7T59J70V/mNjyuhyWVDrTnHCpTRI3NlfXyMvgruULEsiEsaVVAPqc2Cwyonllf1EnIQj+oqiiGTeLHMI53lM= rsad@rsad-VirtualBox" > /home/yc-user/.ssh/authorized_keys

#Устанавливаем ruby
#Обновляем APT и устанавливаем Ruby и Bundler:
sudo apt update && sudo apt upgrade
sudo apt install -y ruby-full ruby-bundler build-essential
#Проверить установку можно этими командами
#ruby -v
#bundler -v

#Устанавливаем mongodb
sudo apt update && sudo apt upgrade
asdsad wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo systemctl start mongod
sudo systemctl enable mongod
#Проверить работоспособность можно этой командой
#sudo systemctl status mongod

#Скачиваем, устанавливаем и деплоим приложение
sudo apt update && sudo apt upgrade
sudo apt install -y git
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install
sudo gem install -y bundler
puma -d
#ps aux | grep puma
#Подключаться из браузера. В строке прописать external_ip:port
