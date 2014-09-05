#! /bin/bash

PS3="ps3: "
select f in *; do

  echo "choose $REPLY, $f"
  [ -f "$f" ] && break

done

