#!/bin/sh

cd /
cd /[INSTALLATION_PATH]/hazelcast-5.1.4/management-center || return
# shellcheck disable=SC2016
echo '[PASSWORD]' | sudo -S ./bin/hz-mc start -Dhazelcast.mc.metrics.persistence.enabled=false

exit