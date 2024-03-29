#!/usr/bin/env bash

if [[ $1 = '-h' ]]; then
  echo "Open a tunnel to forward a remote port on local host"
  echo "Usage: ./tunnel.sh localPort remotePort privateServer userOrEmail [sshTarget]"
else
  if [[ $5 ]]; then
    SSHTARGET=$5
  else
    SSHTARGET="alfa.csr.unibo.it"
  fi
  ssh -L $1:$3:$2 -N -l $4 ${SSHTARGET}
fi
