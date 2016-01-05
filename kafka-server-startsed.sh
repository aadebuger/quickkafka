cat /opt/server.tmpl
echo "test1"
sed "s/172.17.9.103/$dockerip/g"  /opt/server.tmpl > config/server1.tmpl
cat config/server1.tmpl
sed "s/1257.net/$hostip/g"  config/server1.tmpl > config/server.properties
bin/kafka-server-start.sh config/server.properties
