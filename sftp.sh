#!/usr/bin/env bash

if [[ $1 = '-h' ]]; then
  echo "Tunnel remote SFTP port 22 on local host (default local port: 8022)"
  echo "Usage: ./sftp.sh uniboEmail clusterNumber [localPort]"
else
  PORT=22
  if [[ $3 ]]; then
    LOCALPORT=$3
  else
    LOCALPORT="80${PORT}"
  fi
  echo "Opening tunnel for SFTP of isi-vclust$2.csr.unibo.it:$PORT opened on port $LOCALPORT"
  echo "Access Secure FTP at sftp://localhost:$LOCALPORT"
  ./tunnel.sh ${LOCALPORT} ${PORT} isi-vclust$2.csr.unibo.it $1
fi