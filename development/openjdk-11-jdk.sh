#!/bin/bash

# Installs OpenJDK 11
sudo apt install --assume-yes openjdk-11-jdk

# Creates JAVA_HOME on the user profile
echo "export JAVA_HOME=/usr/bin/" > ~/.profile

# Load the profile

# shellcheck source=/dev/null
source /home/"$USER"/.profile
