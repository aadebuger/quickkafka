docker stop  quickkafkazookeeper || echo "stop quickkafkazookeeper"
docker rm quickkafkazookeeper || echo "rm quickkafkazookeeper"
docker run -d -p 2181:2181 --name quickkafkazookeeper  aadebuger/quickkafka-zookeeper
