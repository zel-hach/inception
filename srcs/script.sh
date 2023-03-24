#!/bin/sh
sudo mkdir -p /home/zel-hach/data/mysql
sudo mkdir -p /home/zel-hach/data/wordpress
sudo docker compose -f docker-compose.yml down
docker system prune -af
sudo docker compose build
sudo docker compose -f docker-compose.yml up