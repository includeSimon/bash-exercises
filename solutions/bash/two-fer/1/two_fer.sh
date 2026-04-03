#!/usr/bin/env bash

main () {
    input="$1"
    name=${input:-you}

    echo "One for $name, one for me."
}

main "$@"