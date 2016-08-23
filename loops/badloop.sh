#!/bin/bash
#improperly using the continue command in a while loop

var1=0

while echo "while interation: $var1"
[ $var1 -lt 15 ]
do
	if [ $var1 -gt 5 ] && [ $var1 -lt 10 ] 
	then 
	  continue 2 
	fi
	echo " inside iteration number: $var1"
	var1=$[ $var1 + 1 ]
done

