#!/bin/bash

if [ $1 = '-h' ]; then
  echo "Usage: ./cloudera.sh uniboEmail [localPort]"
else
  PORT=7180
  if [ $2 ]; then
    LOCALPORT=$2
  else
    LOCALPORT=$PORT
  fi
  echo "Opening tunnel for Cloudera Manager at 137.204.72.233:$PORT opened on port $LOCALPORT"
  echo "Access web GUI at http://localhost:$LOCALPORT/cmf/home"
  ./tunnel.sh $LOCALPORT $PORT 137.204.72.233 $1
fi
