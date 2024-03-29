#!/usr/bin/env bash

if [[ $1 = '-h' ]]; then
  echo "Tunnel WebHDFS remote ports 50070 and 50075 to local host"
  echo "Usage: ./webhdfs.sh uniboEmail [localPort1] [localPort2]"
else
  PORT1=50070
  if [[ $2 ]]; then
    LOCALPORT1=$2
  else
    LOCALPORT1=${PORT1}
  fi
  
  PORT2=50075
  if [[ $3 ]]; then
    LOCALPORT2=$3
  else
    LOCALPORT2=${PORT2}
  fi
  echo "Opening tunnel for WebHDFS at http://isi-vclust0.csr.unibo.it:$PORT1 opened on port $LOCALPORT1"
  echo "Also, port $PORT2 tunneled to port $LOCALPORT2"
  echo "Access web GUI at http://localhost:$LOCALPORT1/cmf/home"
  
  ssh -L ${LOCALPORT1}:isi-vclust0.csr.unibo.it:${PORT1} -L ${LOCALPORT2}:isi-vclust0.csr.unibo.it:${PORT2} -N -l $1 alfa.csr.unibo.it
fi