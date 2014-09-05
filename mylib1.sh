#! /bin/bash

_getip()
{
  local tmp r ip
  [ -z "$1" ] && return

  FUNREPLY=()
  tmp=$(ifconfig $1 | grep 'inet addr')
  echo "tmp = $tmp"
  r=${tmp/inet addr:/}
  echo "r = $r"
  ip=${r/ Bcast*/}
  echo "ip = $ip"
  FUNREPLY=($ip)
}

