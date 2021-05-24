#!/bin/bash

#checks if 2 parameters are entered or not
if [ $# -eq 2 ] 
then 
	echo "Number of occurance of code $2: $(curl $1 | cut -d " " -f9 | sort | uniq -c | grep $2 | awk '{print $1}') \c"
	#curl the address, take 9th column and sort and print the value.
	#We can also use below command for the same, if the column number changes:
	#curl $1 | awk -F "HTTP/1.?" '{split($2,a," ");print a[2]}' | sort | uniq -c | grep $2 | awk '{print $1}'
else
	echo "Enter two parameters i.e location and status code to fetch"
fi
