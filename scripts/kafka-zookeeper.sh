#!/bin/sh

cd /
cd /[INSTALLATION_PATH]/kafka_2.13-3.3.1 || return
# shellcheck disable=SC2016
echo '[PASSWORD]' | sudo -S ./bin/zookeeper-server-start.sh config/zookeeper.properties

exit