#!/bin/bash

if [ -f ~/.uprecord ]
then
	uprecord=$(<~/.uprecord)
	uprecord=${uprecord%%.*}
	#uprecordseconds=$(( uprecord%60 ))
	uprecordminutes=$(( uprecord/60%60 ))
	uprecordhours=$(( uprecord/60/60%24 ))
	uprecorddays=$(( uprecord/60/60/24 ))

	echo "${uprecorddays}d ${uprecordhours}h ${uprecordminutes}m"
else
	echo "no record"
fi
