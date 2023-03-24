.PHONY:start down clean 
start:
	sudo mkdir -p /home/zel-hach/data/mysql
	sudo mkdir -p /home/zel-hach/data/wordpress
	sudo mkdir -p /home/zel-hach/data/portainer
	sudo docker compose -f srcs/docker-compose.yml up --build
down:
	sudo docker compose -f srcs/docker-compose.yml down
clean:
	sudo docker system prune -af