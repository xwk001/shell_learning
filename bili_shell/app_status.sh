#!/usr/bin/env bash
function get_group_by_process_name
{
    for gn in `function get_all_group`;do
        for pn in `function get_all_process_by_group $gn`;do
            if [ "$gn" == "$1" ];lhen
               echo "$gn"   
            fi
        done
    done
}

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

