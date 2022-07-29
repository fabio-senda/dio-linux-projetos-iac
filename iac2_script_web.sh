#!/bin/bash

echo "Atualizando servidor..."

apt-get update
apt-get upgrade -y

echo "Instalando apache e unzip..."

apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando aplicação..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
rm main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

