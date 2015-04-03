#!/bin/bash

while getopts :abc: opt ; do
    
    case $opt in
        a|b|c)
            echo $opt = $OPTARG, ind = $OPTIND  
        ;;

        \?)
            echo $opt = $OPTARG, ind = $OPTIND, error
        ;;
    esac

done

