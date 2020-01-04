docker network create keycloak-network
docker run -d --name postgres --net keycloak-network -e POSTGRES_DB=keycloak -e POSTGRES_USER=keycloak -e POSTGRES_PASSWORD=password -p 5432:5432 postgres
docker run -d -p 8180:8080 -e KEYCLOAK_USER=admin -e KEYCLOAK_PASSWORD=admin -v $(pwd):/tmp --name keycloak --net keycloak-network -e DB_ADDR=192.168.99.100:5432 -e DB_USER=keycloak -e DB_PASSWORD=password jboss/keycloak 
docker logs -f keycloak