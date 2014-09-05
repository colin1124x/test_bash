#! /bin/bash

declare -i i=0

echo "initialize \$@ = $@"

while shift; do
  ((++i))
  [ -n "$1" ] && echo "shift $i 次 => $@"
done

