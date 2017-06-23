#!/bin/bash
if [[ $# -ne 2 ]]; #condition for checking number of arguments
then              
	echo "usage:$0 <username> <ip address>"
	exit 1
fi 
if ! [[ $2 =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ ]]; then  #checking for a valid ip address
	echo "usage:$0 <username> <ip address>"
	exit
fi
ssh $1@$2 ls -R|xargs -n 1 basename   #listing all files from a remote system
