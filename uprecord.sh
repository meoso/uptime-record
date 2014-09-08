#!/bin/bash

uprecord=$(<~/.uprecord)
uprecord=${uprecord%%.*}
#uprecordseconds=$(( uprecord%60 ))
uprecordminutes=$(( uprecord/60%60 ))
uprecordhours=$(( uprecord/60/60%24 ))
uprecorddays=$(( uprecord/60/60/24 ))


uptime=$(</proc/uptime)
uptime=${uptime%%.*}
#seconds=$(( uptime%60 ))
upminutes=$(( uptime/60%60 ))
uphours=$(( uptime/60/60%24 ))
updays=$(( uptime/60/60/24 ))

echo "current uptime:"
echo "${updays}d ${uphours}h ${upminutes}m" 

if [[ ( $updays -gt $uprecorddays ) || ( $updays -eq $uprecorddays && $uphours -gt $uprecordhours ) || ( $updays -eq $uprecorddays && $uphours -eq $uprecordhours && $upminutes -gt $uprecordminutes ) ]]
then
	echo "new uptime record:"
	echo "${updays}d ${uphours}h ${upminutes}m" 
	cat /proc/uptime > ~/.uprecord
else
	echo "old record stands:"
	echo "${uprecorddays}d ${uprecordhours}h ${uprecordminutes}m"
fi
