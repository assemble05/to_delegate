#!/bin/bash


echo "escreva sua password postgres:"
read password

while [ ${#password} -lt 4 ]
do
echo "Sua password precisa ter mais de 4 caracteres"
echo "escreva sua password postgres:"
read password
done 


sudo apt update && sudo apt upgrade

sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

sudo apt -y install postgresql

sudo -u postgres psql -c "CREATE USER $(whoami) CREATEROLE CREATEDB PASSWORD '$password';"

sudo -u postgres psql -c "CREATE DATABASE $(whoami) ;"