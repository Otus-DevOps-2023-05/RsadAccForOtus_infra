# RsadAccForOtus_infra
RsadAccForOtus Infra repository

# Подключение к someinternalhost в одну команду
# IP bastionhost и someinternalhost на момент написания
ssh -i ~/.ssh/appuser -A -J appuser@158.160.107.112 appuser@10.128.0.24

# Вариант решения для подключения из консоли при помощи команды вида ssh someinternalhost
Host bastionhost
# Внешний IP Бастиона на момент написания
HostName 158.160.102.83
# Путь к закрытому ключу для подключения к бастиону
IdentityFile ~/.ssh/appuser
User appuser
Host someinternalhost
# IP someinternalhost на момент написания
HostName 10.128.0.24
User appuser
ProxyCommand ssh -W %h:%p bastionhost

# Данные для пля подключения через OpenVPN
bastion_IP = 158.160.102.83
someinternalhost_IP = 10.128.0.24
