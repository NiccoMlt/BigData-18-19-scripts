#!/usr/bin/env bash

if [[ $1 = '-h' ]]; then
  echo "Usage: ./webHue.sh uniboEmail [localPort]"
else
  PORT=8888
  if [[ $2 ]]; then
    LOCALPORT=$2
  else
    LOCALPORT=${PORT}
  fi
  echo "Opening tunnel for Hue at 137.204.72.233:$PORT opened on port $LOCALPORT"
  echo "Access web GUI at http://localhost:8888/hue/editor/?type=hive"
  ./tunnel.sh ${LOCALPORT} ${PORT} 137.204.72.233 $1
fi
