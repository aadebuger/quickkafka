echo kafkaserver
echo $kafkaserver
bin/kafka-console-producer.sh --broker-list $kafkaserver:9092 --topic test
