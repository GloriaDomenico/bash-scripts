#!/bin/bash
#while command test
var=10
while [ $var -gt 0 ]
do 
echo $var
var=$[ $var - 1 ]
done
