#!/bin/sh

pkill -f "com.hazelcast.app.Main"

docker-compose -f ../docker-compose.yaml down
sleep 5
sh ./hazelcast-stop.sh
sleep 5
sh ./kafka-broker-stop.sh
sleep 5
sh ./kafka-zookeeper-stop.sh

exit