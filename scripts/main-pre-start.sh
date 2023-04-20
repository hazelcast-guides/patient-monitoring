#!/bin/sh

sh ./kafka-zookeeper.sh &
sleep 5
sh ./kafka-broker.sh &
sleep 5
sh ./hazelcast.sh &
sleep 5
sh ./hazelcast-management.sh &
sleep 5
docker-compose -f ../docker-compose.yaml up -d &
sleep 5
sh ./grafana.sh &
sleep 5

exit