#!/bin/bash

echo "Insira seu E-mail para gerar a chave ssh:"
read email

while [ ${#email} -lt 8 ]
do
echo "Insira seu E-mail para gerar a chave ssh:"
echo "escreva seu E-mail:"
read email
done 

ssh-keygen -t ed25519 -C $email

code ~/.ssh/id_ed25519.pub

google-chrome https://github.com/settings/keys