#!/bin/bash

# Add Dependencies
. .dependencies/ticktick.sh

#######################################
#    Created by Sishaar Rao
#    This is a step by step of the 
#    todolist program
#######################################
KEYWORDS=("init" "list" "add" "remove" "complete")

__tokenize (){
    count=""
    for param in $*; do
	if [[ "$count" != "" ]] && [[ " ${KEYWORDS[*]} " == *" $param "* ]]; then
	    echo "Error Code 3: Too many keywords in input"
	    exit 3
	fi
	if [[ "$count" == "" ]] && [[ " ${KEYWORDS[*]} " == *" $param "* ]]; then
	    count="$param"
	fi
    done
}

echo "Parameter:" $*
echo "Keywords:" ${KEYWORDS[*]}

# Check if parameters hit a keyword

__tokenize $*

echo $count
