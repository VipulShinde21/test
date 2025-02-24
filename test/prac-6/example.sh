#!/bin/bash
#monitoring 
COUNTER=0
while ps aux | grep httpd | grep -v grep > /dev/null
do
	COUNTER=$((COUNTER+1))
	sleep 1
	echo COUNTER is $COUNTER
done
logger HTTPMONITOR: httpd stopped at 'date'
service httpd start
mail -s Apache server just stopped root


