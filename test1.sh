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
for param in $*; do
    if [[ " ${KEYWORDS[*]} " == *"$param"* ]];
    then
	echo "Param Matched:" $param
    else
	echo "Param No Match:" $param
    fi
done



