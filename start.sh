#!/bin/bash

cd /data/

#jarfile=$(cd /data && ls|grep forge-*.jar)
#cd /data && java -server "-Xms${INIT_MEM}" "-Xmx${MAX_MEM}" "-XX:+UnlockExperimentalVMOptions" "-XX:+UseCGroupMemoryLimitForHeap" "-XshowSettings:vm" "-Dfml.queryResult=confirm" -jar $jarfile nogui

./ServerLinux.sh
