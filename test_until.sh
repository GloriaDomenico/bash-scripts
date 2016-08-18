#!/bin/bash
#using until command
var1=100

until [ $var1 -eq 0 ]
do
echo $var1
var1=$[ $var1 - 25 ]
done
 echo "We can do the same with the while command"
 echo "until and while are the opposite"
#testing the same with while commamd

var2=100

while [ $var2 -gt 0 ]
do 
echo $var2
var2=$[ var2 - 25]
done

