#!/bin/bash
echo "enter the file name"
read name
while read line
do 
	echo "this is etheesh"
	echo "$line"
done < $name

