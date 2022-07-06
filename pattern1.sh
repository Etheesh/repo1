#!/bin/bash
echo "enter file name"
read file
echo "please enter the pattern"
read pattern
echo "the file name is $file"
a=`grep -i -l "$pattern" $file | wc -w `
if [ $a -gt 0 ] 
then
	       echo "the $pattern is found in the file $file"
       else
	       echo "the $pattern is not found in the file $file"
fi
echo "delete line send to central repo"
