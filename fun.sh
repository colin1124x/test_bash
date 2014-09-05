#! /bin/bash

fun() {
  for n in $@; do
    echo $n;
  done
}

fun 9 5 1

