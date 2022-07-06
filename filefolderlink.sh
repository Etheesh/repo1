#!/bin/bash
echo "enter the string name"
read a 
if [ -f $a ]
then
	echo "$a is a file"
elif [ -d $a ]
then
	echo "$a is a directory"
elif [ -L $a ]
then
	echo "$a is a link"
else
	echo "$a is not a file or folder or link"
fi
