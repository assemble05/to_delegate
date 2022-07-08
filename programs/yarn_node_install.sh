#!/bin/bash

sudo apt-get update && sudo apt-get upgrade

sudo apt install curl

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

command -v nvm

nvm install --lts

npm install --global yarn