#!/bin/sh

cd /
cd /[PROJECT_PATH]/patient-monitoring/scripts/ || return
sh ./main-build.sh > ../logs/main.log &

exit