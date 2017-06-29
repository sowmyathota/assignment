#!/bin/bash



var=$(df / | grep / | awk '{ print $5}' | sed 's/%//g') #for printing disk_usage 



if ! [[ "$2" == " " ]] #checking the mail input

then

	mail=$2

else

	mail=sowmya.thota50@gmail.com #default mailid if no mail id is specified

fi 



if [ $var -gt $1 ] #comparing usage with threshold value

then

  echo "WARNING! Your disk space is:" $var"%  

  Delete some unused files" | mail -s "Memory Usage Alert" $mail  #sending a warning mail about usage

fi
