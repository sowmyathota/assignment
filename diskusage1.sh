#!/bin/bash



if [ $# -lt 2 ] 



then



echo "usage:<$0> <threshold> [hourly/daily/weekly/monthly/yearly][email]"



fi

shopt -s nocasematch

if ! [[ "$2" == "hourly" || "daily" || "weekly" || "monthly" || "yearly" ]]

then

echo "usage:<$0> <threshold> [hourly/daily/weekly/monthly/yearly][email]"

fi

#shopt -s nocasematch

if [[ "$2" == "hourly" ]]

then

schedule="17 * * * *"

fi

if [[ "$2" == "daily" ]]

then

schedule="59 15 * * *"

fi

if [[ "$2" == "weekly" ]]

then

schedule="59 15 * * 1"

fi

if [[ "$2" == "monthly" ]]

then

schedule="59 15 1 * *"

fi

if [[ "$2" == "yearly" ]]

then

schedule="59 15 1 1 *"

fi





echo "$schedule bash /home/rihu/diskusage_mail.sh $1 $3" | crontab - #scheduling a cron job




