#!/usr/bin/env bash

main() {
    score="$1"
    mode="$2"
    item="$3"

    names=(eggs peanuts shellfish strawberries tomatoes chocolate pollen cats)
    values=(1 2 4 8 16 32 64 128)

    if [[ "$mode" == "allergic_to" ]]; then
        value=0

        case "$item" in
            eggs) value=1 ;;
            peanuts) value=2 ;;
            shellfish) value=4 ;;
            strawberries) value=8 ;;
            tomatoes) value=16 ;;
            chocolate) value=32 ;;
            pollen) value=64 ;;
            cats) value=128 ;;
        esac

        if (( score & value )); then
            echo "true"
        else
            echo "false"
        fi

    elif [[ "$mode" == "list" ]]; then
        result=()

        for (( i=0; i<${#names[@]}; i++ ))
        do
            if (( score & values[i] )); then
                result+=("${names[i]}")
            fi
        done

        echo "${result[*]}"
    fi
}

main "$@"