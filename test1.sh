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

    # Verify that param isn't empty
    if [[ -z $*  ]]; then
	echo "Error Code 4: No command provided"
	exit 4
    fi
    
    command=""
    # Parse through params, get command
    for param in $*; do
	if [[ "$command" != "" ]] && [[ " ${KEYWORDS[*]} " == *" $param "* ]]; then
	    echo "Error Code 3: Too many keywords in input"
	    exit 3
	fi
	if [[ "$command" == "" ]] && [[ " ${KEYWORDS[*]} " == *" $param "* ]]; then
	    command="$param"
	fi
    done

    ${command}
}

init (){
    echo "This is the function for initializing a new list"
    exit 0
}

list (){
    echo "This is the function for listing the contents of a list"
    exit 0
}

add (){
    echo "This is the function for adding an element to a list"
    exit 0
}

remove (){
    echo "This is the function for removing an element from a list"
    exit 0
}

complete (){
    echo "This is the function for marking a task complete on a list"
    exit 0
}



#echo "Parameter:" $*
#echo "Keywords:" ${KEYWORDS[*]}

# Check if parameters hit a keyword

__tokenize $*

echo $command
