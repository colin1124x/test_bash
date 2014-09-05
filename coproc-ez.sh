#! /bin/bash

coproc { cat x; sleep 2; }
sleep 1
while read -u ${COPROC[0]}; do
  echo $REPLY
done

