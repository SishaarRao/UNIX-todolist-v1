#!/bin/bash

# Add Dependencies
. ./.dependencies/ticktick.sh

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
# Tokenize input, call respective function
#__tokenize $*


# JSON manipulation
# Print the original data
#DATA=`cat ./data1.json`
#echo $DATA
#tickParse "$DATA"
#for person in ``People.Sishaar.items()``; do
#    printf "    - %s\n" ${!person}
#done
#
## Push a new value, reprint the data
#newItem="Dance"
#newItem2="Movies"
#`` People.Sishaar.Hobby = [] ``
#`` People.Sishaar.Hobby.push($newItem) ``
#`` People.Sishaar.Hobby.push($newItem2) ``
#
#for person in ``People.Sishaar.items()``; do
#    printf "    - %s\n" ${!person}
#done
#myItems= tickVars
#echo $myItems

DATA=`cat ./data2.json`
echo $DATA
tickParse "$DATA"
len=``List.length()``
count=0

arrayA=(0 1 2 3)
for i in $(seq 0 $(($len-1)));
do
    echo $i
    echo ``List[0].Description``
done

