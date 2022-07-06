#!/bin/bash
ps -C "sshd"
if [ $? -ne 0 ]
then
	echo "sshd server is down, please take the neccessary action" | mail -s "ALert :sshd service down" -c jkbhavith@gmail.com
fi	
