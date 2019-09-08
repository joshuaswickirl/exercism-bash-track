#!/usr/bin/env bash

main () {
    
    if (( $# != 2 )) ; then
        output='Usage: hamming.sh <string1> <string2>'
        status=1
    elif (( ${#1} == ${#2} )); then
        output=0
        for (( i=0; i <= ${#1}; i++ )); do
            if [[ ${1:i:1} != ${2:i:1} ]]; then
                (( output++ ))
            fi
        done
    elif (( ${#1} == 0 )); then
        output='left strand must not be empty'
        status=1
    elif (( ${#2} == 0 )); then
        output='right strand must not be empty'
        status=1
    elif (( ${#1} > ${#2} )) || (( ${#1} < ${#2} )); then
        output='left and right strands must be of equal length'
        status=1
    fi

    echo $output
    exit $status
}

main "$@"
