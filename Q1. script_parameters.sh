#!/bin/bash

#checks if entered number of arguments are 6 or not. irrespective of order
if [ $# -eq 6 ]
then
	echo Sucess, you entered 6 arguments
else
	echo please enter 6 arguments
fi	
