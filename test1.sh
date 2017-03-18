#!/bin/bash

# Add Dependencies
. ./.dependencies/ticktick.sh

# Add Saves


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

# Read Data from a JSON File
DATA=`cat ./data2.json`
echo $DATA
tickParse "$DATA"
len=``List.length()``
echo $len
for i in $(seq 0 $(($len-1)));
do
    index=`printf "%012d" "$i"` 
    var="__tick_data_List_${index}_Description"
    var2="__tick_data_List_${index}_Completed"    
    eval result=\$$var
    eval result2=\$$var2
    echo $result $result2
done

# Write Data to a JSON file
file="./.saves/data1.json"
# Check if file exists and is writable, if not create the file
( [ -e "$file" ] || touch "$file" ) && [ ! -w "$file" ] && echo "Error Code 5: $file is unwritable. Todolist has deleted Save File" && rm "$file" && exit 5
# Write to File
curr=`cat $file`
cat > $file <<EOF
$curr
Hello World Again!
I am at $file!
EOF
