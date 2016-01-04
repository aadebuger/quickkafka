docker stop consumer || echo "stop consumer"
docker rm consumer || echo "rm consumer"
dockerip=`docker inspect quickkafkazookeeper  |jq -r .[0].NetworkSettings.IPAddress`

docker run -v $PWD/config1:/opt/kafka_2.11-0.9.0.0/config -v $PWD:/code -e zookeepserver=1257.net:2181 -d --name consumer  aadebuger/quickkafka-kafkaserver   sh /code/consumer.sh
