#!/bin/bash
# Script that runs a command plus any options on each line in a file.

[ $# -eq 0 ] && { echo "Usage: ./doEach.sh <COMMANDS> <OPTIONS> <FILE>"; exit 1; }

cmd=$1
file=$2

while read LINE; do
    "${@:1:$(($#-1))}" $LINE # Number of command options is unlimited.
    echo ""
done < "${@: -1}i"
