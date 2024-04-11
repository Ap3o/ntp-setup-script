#!/bin/bash

# Установить ntp
sudo apt-get update
sudo apt-get install -y ntp

# Обновить конфигурацию сервера
echo "server 0.ru.pool.ntp.org iburst" | sudo tee /etc/ntp.conf

# Настроить часовой пояс
sudo timedatectl set-timezone Asia/Yekaterinburg

# Перезапустить ntp
sudo service ntp restart

# Вывести текущее время в указанном формате
date +"%d.%m.%y %H:%M:%S"
