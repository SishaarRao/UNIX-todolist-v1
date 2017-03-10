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
    command=""
    for param in $*; do
	if [[ "$count" != "" ]] && [[ " ${KEYWORDS[*]} " == *" $param "* ]]; then
	    echo "Error Code 3: Too many keywords in input"
	    exit 3
	fi
	if [[ "$count" == "" ]] && [[ " ${KEYWORDS[*]} " == *" $param "* ]]; then
	    command="$param"
	fi
    done
}

init (){
    # This is the function for initializing a new list
}

list (){
    # This is the function for listing the contents of a list
}

add (){
    # This is the function for adding an element to a list
}

remove (){
    # This is the function for removing an element from a list
}

complete (){
    # This is the function for marking a task complete on a list
}



echo "Parameter:" $*
echo "Keywords:" ${KEYWORDS[*]}

# Check if parameters hit a keyword

__tokenize $*

echo $count
