echo zookeepserver
echo $zookeepserver
bin/kafka-topics.sh --create --zookeeper $zookeepserver:2181 --replication-factor 1 --partitions 1 --topic test1
