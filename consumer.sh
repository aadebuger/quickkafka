echo zookeepserver
echo $zookeepserver
bin/kafka-console-consumer.sh --zookeeper 1257.net:2181 --topic test --from-beginning
