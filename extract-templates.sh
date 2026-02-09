#!/usr/bin/bash

usage () {
    local message="./extract-templates.sh"
    echo ${message}
}

OPTSTRING="h"

while getopts ${OPTSTRING} opt
do
    case "${opt}" in
            h) usage
               exit 1
               ;;
    esac
done

shopt -s globstar

for i in **/*.ts; do
	echo processing $i
	./extract-template.awk -i inplace -v tsfile=${i} ${i}
done
