#!/bin/bash
#using until and while loop

var1=3

until [ $var1 -eq 0 ] #test command for until
do 
 echo "Outer loop: $var1"
 var2=1
 while [ $var2 -lt 5 ] #test command for while
 do
  var3=$(echo "scale=4; $var1 / $var2" | bc) #command substitution for using bc on a script. See page 288 on Bash bibble
  echo "Inner loop: $var1 / $var2 = $var3"
  var2=$[ $var2 + 1 ]
 done
 var1=$[ $var1 - 1 ]
done

