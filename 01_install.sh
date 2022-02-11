#!/bin/bash

# docker

sudo apt update -y
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update -y
sudo apt install -y docker-ce
sudo usermod -aG docker $USER
sudo curl -L https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# ethereum

sudo add-apt-repository -y ppa:ethereum/ethereum
sudo apt-get update -y
sudo apt-get install -y ethereum

# create account

mkdir ./node
echo 'r1tGK&5857@J' > ./node/password.txt
echo 'r1tGK&5857@J' > ./node/password.txt
echo 'r1tGK&5857@J' > ./node/password.txt

geth --password ./node/password.txt --datadir node/ account new
