#!/bin/bash

# Add Dependencies
. .dependencies/ticktick.sh

#######################################
#    Created by Sishaar Rao
#    This is a step by step of the 
#    todolist program
#######################################

function parse(){
    echo "Hello, World!"
}

containsElement () {
    local e
    for e in "${@:2}"; do [[ "$e" == "$1" ]] && return 0; done
    return 1
}



KEYWORDS=("init" "list" "add" "remove" "complete")
echo "Parameter:" $*
echo "Keywords:" ${KEYWORDS[*]}

#echo "$* ${KEYWORDS[*]}" | tr ' ' '\n' | sort -u | tr '\n' ' '

for param in $*
do
    containsElement "init" "${KEYWORDS[*]}"
    echo $?
done



