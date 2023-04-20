#!/bin/sh

cd /
cd /[INSTALLATION_PATH]/grafana-9.1.0 || return
# shellcheck disable=SC2016
echo '[PASSWORD]' | sudo -S ./bin/grafana-server web

exit