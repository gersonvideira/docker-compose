include .env

.PHONY: up

up:
	docker compose up -d

upforce:
	docker compose up -d --force-recreate

.PHONY: down

down:
	docker compose down 

stop:
	docker rm -f $(docker ps -aq)

.PHONY: logs

logs:
	docker compose logs -f

vi:
	docker ps -a

in:
	docker exec -it postgres /bin/sh
network:
	docker network ls