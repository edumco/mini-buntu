#!/bin/bash

# Adiciona a chave do repositório
sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 2FAB19E7CCB7F415

# Adiciona repositório à lista de repositórios
sudo add-apt-repository "deb https://apt.iteas.at/iteas focal main"

# Instala openfortigui
sudo apt install --assume-yes --no-install-recommends openfortigui

