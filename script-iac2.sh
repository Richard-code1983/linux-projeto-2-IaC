#!/bin/bash

echo "Atualizando servidor..."

apt-get update
apt-get upgrade

echo "Instalando  ferrementas..."

apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando arquivos da aplicação..."

cd/tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "FInalizado."
