  docker run --name mongodb -d -v /db/own/datadir:/data/db -p 27017:27017 mongo:latest
  docker run --name postgres -v pgdata:/var/lib/postgresql/data -e POSTGRES_PASSWORD=docker -d -p 5432:5432 postgres:latest


## Stop containers
docker rm -f $(docker ps -aq) 

## List containers
docker ps -a

## list image
docker image ls 

## Dele image
docker rmi "id" "id" --force