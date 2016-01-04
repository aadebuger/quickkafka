docker stop quickkafkaserver || echo "stop quickkafkaserver"
docker rm quickkafkaserver || echo "rm quickkafkaserver" 
dockerip=`docker inspect quickkafkazookeeper |jq -r .[0].NetworkSettings.IPAddress`
#sed "s/172.17.9.103/$dockerip/g"  config/server.tmpl > config/server1.tmpl
 
#sed "s/1257.net/$hostip/g"  config/server1.tmpl > config/server.properties
docker run -d --name quickkafkaserver -p 9092:9092 -e dockerip=$dockerip -e hostip=1257.net -v $PWD/kafka-logs:/tmp/kafka-logs -v $PWD/config:/opt/kafka_2.11-0.9.0.0/config1   aadebuger/quickkafka-kafkaserver 
