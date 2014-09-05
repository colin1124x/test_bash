#! /bin/bash

ORIGINIFS=$IFS

IFS=","

set 9 8 7 6 5

echo "use \$* => $*"

echo "use \$@ => $@"

IFS=$ORIGINIFS
