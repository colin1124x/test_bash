#! /bin/bash

if [[ $# != 1 || -e $1 ]]; then
  echo 請輸入檔名
else

  while true; do
    echo xxx >> $1
    sleep 10
  done
fi
