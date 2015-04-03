#! /bin/bash

c=789
export d=0

fun() {
	b=456
 	local a=123
 	./val.sh $a
 	echo in fun: a = $a, b = $b, c = $c, d = $d
 	echo
}

fun
