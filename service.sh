#!/bin/bash
service="sshd jenkins tomcat ansible"
for i in service
do
	ps -C $i
	if [ $? -ne 0 ]
	then
		echo "$i serivce is down, please take neccessary action" | mail -s "alert : $i service down" -c jkbhavith@gmail.com
	fi
done
