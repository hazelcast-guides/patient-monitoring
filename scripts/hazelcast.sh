#!/bin/sh

cd /
cd /[INSTALLATION_PATH]/hazelcast-5.1.4 || return
# shellcheck disable=SC2016
echo '[PASSWORD]' | sudo -S ./bin/hz start

exit