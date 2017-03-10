#!/bin/bash

# Add Dependencies
. .dependencies/ticktick.sh

#######################################
#    Created by Sishaar Rao
#    This is a step by step of the 
#    todolist program
#######################################


KEYWORDS=("init" "list" "add" "remove" "complete")
echo "Parameter:" $*
echo "Keywords:" ${KEYWORDS[*]}

# Check if parameters hit a keyword
count=0
for param in $*; do
    # Check if param is keyword
    if [[ " ${KEYWORDS[*]} " == *"$param"* ]]
    then
	((count++))
    fi
    # Throw error if too many keywords in param
    if [[ "$count" -gt "1" ]]
    then
	echo "Error Code 3: Too many keywords in input"
	exit 3
    fi
    
done

echo $count
