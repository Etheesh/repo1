#!/bin/bash
size=`df -h . | awk 'NR==2 {print $(NF-1)}' | sed 's/%/ /g'`
if [ $size -gt 30 ]
then 
	echo "disc space reached above 30%" | mail -s "alert: discspace reached threshold" jkbhavith@gmail.com
fi

