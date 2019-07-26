#!/usr/bin/env bash

if [[ $1 = '-h' ]]; then
  echo "Tunnel Yarn remote ports 8088 and 19888 to local host"
  echo "Usage: ./yarnClient.sh uniboEmail [jobPort (8088)] [detailPort (19888)] [logPort (8042)]"
else
  PORT1=8088
  if [[ $2 ]]; then
    LOCALPORT1=$2
  else
    LOCALPORT1=${PORT1}
  fi
  
  PORT2=19888
  if [[ $3 ]]; then
    LOCALPORT2=$3
  else
    LOCALPORT2=${PORT2}
  fi
  
  PORT3=8042
  if [[ $4 ]]; then
    LOCALPORT3=$4
  else
    LOCALPORT3=${PORT3}
  fi
  
  echo "Opening tunnel for Yarn at http://isi-vclust0.csr.unibo.it:$PORT1 opened on port $LOCALPORT1"
  echo "Also, port $PORT2 tunneled to port $LOCALPORT2"
  echo "Access web GUI at http://localhost:$LOCALPORT1"
  
  ssh -L ${LOCALPORT1}:isi-vclust0.csr.unibo.it:${PORT1} -L ${LOCALPORT2}:isi-vclust0.csr.unibo.it:${PORT2} -L ${LOCALPORT3}:isi-vclust0.csr.unibo.it:${PORT3} -N -l "$1" alfa.csr.unibo.it  
fi
