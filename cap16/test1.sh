#!/bin/bash
#testing signal trapping 
#
trap "echo 'Sorry! I have trapped Ctrl-C' " SIGINT
#
count=1
while [ $count -le 10 ]
do 
echo "Loop #$count"
sleep 2
count=$[ $count +1 ]
done

echo "this is the end of the test script"

