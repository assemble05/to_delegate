#!/bin/bash

# slack

sudo apt update && sudo apt upgrade

sudo snap install slack --classic

# Google

programs/./google_install.sh

# Zoom

programs/./zoom_install.sh

# Discord

sudo snap install discord

# Yarn and Node

programs/./yarn_node_install.sh

# Beekeper
programs/./beekeper_install.sh

# Vs code 

sudo snap install --classic code

# Postgres

programs/./postgres_install.sh

# Docker

programs/./docker_install.sh

# Insomnia

programs/./insomnia_install.sh

# Gerar-chave ssh

programs/./ssh_generate.sh