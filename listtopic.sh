echo zookeepserver
echo $zookeepserver
bin/kafka-topics.sh --list --zookeeper  $zookeepserver:2181
