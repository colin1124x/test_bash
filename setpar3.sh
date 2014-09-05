#! /bin/bash
echo "命令列參數 $@"
pars() {
  echo "$FUNCNAME 共 $# 個參數"
  echo "參數: $@"
}

pars 99 98 97 96 95
echo "命令列參數 $@"

