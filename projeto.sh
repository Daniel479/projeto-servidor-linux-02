#!/bin/bash

echo "atualizando o servidor..."
apt-get update
apt-get upgrade -y

echo "instalando o apache2..."
apt-get install apache2 -y

echo "instalando unzip..."
apt-get install unzip -y

cd /tmp

echo "baixando aplicação..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "descompactando arquivo"
unzip main.zip
cd linux-site-dio-main
echo "copiando arquivos da aplicação para o apache..."
cp -r * /var/www/html
echo "finalizado"
