dockerip=`docker inspect quickkafkazookeeper  |jq -r .[0].NetworkSettings.IPAddress`

docker run -v $PWD:/code -e zookeepserver=$dockerip -it aadebuger/quickkafka-kafkaserver   sh /code/createtopic.sh
