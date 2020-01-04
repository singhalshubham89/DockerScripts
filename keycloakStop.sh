docker stop postgres
docker stop keycloak
docker rm $(docker ps -a -f status=exited -q)
docker network rm keycloak-network