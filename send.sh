#!/bin/sh
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin

self=$0
target=$1
cmd=$2

usage(){
	echo Usage: $self target command 
}

if [ ! -r "$target" ] ; then
	usage
	exit 1
fi

if [ -z "$cmd" ] ; then
	usage
	exit 1
fi

for x in $(cat $target) ; do
	echo send: $x $cmd
	echo -n $(ssh $x $cmd)
done

exit 0
