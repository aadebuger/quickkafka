echo zookeepserver
echo $zookeepserver
bin/kafka-console-consumer.sh --zookeeper $zookeepserver:2181 --topic test --from-beginning
