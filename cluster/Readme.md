# Solr Cluster mode

## To setup this project
```sh
./setup.sh
```

## To create `techproducts` core
```sh
docker exec -it solr-starter-cs-1 bin/solr create -c techproducts
```

## To load data in `techproducts` core
```sh
docker exec -it solr-starter-cs-1 bin/post -c techproducts example/exampledocs/
```

## To start this project
```sh
docker-compose start
```

## To stop this project
```sh
docker-compose stop
```

## To destroy this project
```sh
docker-compose down -v
```

## Solr Admin UI URL
1. [Local Port 1](http://localhost:8983/)
2. [Local Port 2](http://localhost:8982/)
3. [Local Port 3](http://localhost:8981/)
