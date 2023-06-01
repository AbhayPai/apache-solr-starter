# Solr Standalone mode

## To setup this project
```sh
./setup.sh
```

## To create `techproducts` core
```sh
docker exec -it solr-starter-sa bin/solr create_core -c techproducts
```

## To load data in `techproducts` core
```sh
docker exec -it solr-starter-sa bin/post -c techproducts example/exampledocs/
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
1. [Local](http://localhost:8983/)
