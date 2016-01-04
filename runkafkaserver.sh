docker stop quickkafkaserver || echo "stop quickkafkaserver"
docker rm quickkafkaserver || echo "rm quickkafkaserver" 
dockerip=`docker inspect quickkafkazookeeper |jq -r .[0].NetworkSettings.IPAddress`

sed "s/172.17.9.103/$dockerip/g"  config/server.tmpl > config/server.properties 
docker run -d --name quickkafkaserver -p 9092:9092 -v $PWD/kafka-logs:/tmp/kafka-logs -v $PWD/config:/opt/kafka_2.11-0.9.0.0/config   aadebuger/quickkafka-kafkaserver 