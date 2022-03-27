#!/usr/bin/env bash

if [ $# -gt 0 ];then
    if [ $1 == -g ];then
        shift
        for gn in $@;do
            for pn in `get_all_process_by_group $gn`;do
                echo
            done
        done
    else
            for pn in $@;do
                echo
            done
    fi
else
    for pn in `get_all_process`;do
        echo
    done
fi

