#! /bin/bash

if [[ $# -ne 2 ]]; #condition for checking the number of arguments
then               
	echo "usage:$0 <file type> <pattern>" #defining the usage
	exit 1
fi 
find *.$1|xargs grep $2 #finding the file types and searching a specific pattern
