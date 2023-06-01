#!/bin/sh

# Define function for basic
TriggerWithBasic() {
  docker-compose up -d
}

# Define function for demo triggering
TriggerWithTechproducts () {
  TriggerWithBasic

  docker exec -it solr-starter-cs-1 bin/solr create -c techproducts

  docker exec -it solr-starter-cs-1 bin/post -c techproducts example/exampledocs/
}

read -p "Do you wish to start this project with techproducts demo core ? (y/n) " answer

case ${answer:0:1} in
  y|Y )
      TriggerWithTechproducts
  ;;
  * )
      TriggerWithBasic
  ;;
esac
