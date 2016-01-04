dockerip=`docker inspect quickkafkaserver   |jq -r .[0].NetworkSettings.IPAddress`

docker run -v $PWD/config1:/opt/kafka_2.11-0.9.0.0/config -v $PWD:/code -e kafkaserver=1257.net -it  aadebuger/quickkafka-kafkaserver   sh /code/producer.sh
