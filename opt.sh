#! /bin/bash

while getopts u:a:h opt; do

  case $opt in
    u)
      echo "opt -u = $OPTARG" ;;
    a)
      echo "opt -a = $OPTARG" ;;
    h)
      echo "opt -h = $OPTARG" ;;
    *)
      ;;
  esac

done

