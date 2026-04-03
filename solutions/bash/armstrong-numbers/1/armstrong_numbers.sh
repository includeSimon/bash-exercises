#!/usr/bin/env bash

main () {
    number="$1"
    digits_nr=${#number}
    digit=0
    sum=0
    
    for (( i=0; i<digits_nr; i++ ))
    do
        digit=${number:$i:1}
        (( sum += digit ** digits_nr ))
    done

    if (( sum == number ))
    then
        echo "true"
    else
        echo "false"
    fi
}

main "$@"