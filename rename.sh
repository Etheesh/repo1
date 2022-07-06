#!/bin/bash
cd change
ls | grep -i "txt$" > output1
while read line
do 
	name=`echo $line | awk -f "." '{print $1}'`
	mv $name.txt $name.html
done < output
ls
