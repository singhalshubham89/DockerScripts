if [ -z "$1" ]
then
      docker-compose  down
else
      docker-compose -f $1 down
fi
docker system prune -f
docker volume prune -f
docker network prune -f