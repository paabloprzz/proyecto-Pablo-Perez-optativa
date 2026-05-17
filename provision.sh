#!/bin/bash

echo "Actualizando paquetes"
sudo apt-get update -y

sudo apt-get install -y docker.io

sudo apt-get install -y docker-compose

sudo apt-get install -y git

sudo systemctl enable docker
sudo systemctl start docker

sudo usermod -aG docker vagrant

cd /home/vagrant/project

sudo docker-compose up -d

echo "terminado"