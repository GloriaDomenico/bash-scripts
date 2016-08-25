#!/bin/bash
#finding executable files

######################################################################
# this script produces an output called output_path                  #
# it says: for each folder into PATH list, check if the files inside #
# exist and are executable and write the output on a file called     #
# output_path                                                        #
######################################################################

#Internal Field Separator,IFS
#If you want to use other field separators, you must specify them 
#default separators for bash are: space, tab, new line 
#with IFS you are saying you want colon as field separator. 
#this is necessary because of PATH is a list separeted by colon
#PATH is a list of directories where the shell looks for commands


IFS=:
for folder in $PATH
do 
	for file in $folder/*
	do
		if [ -x $file ] #it checks if the file exists and is executable
		then 
		 echo "$file"
		fi
	done
done > output_path
# this is a way to write outputs in a file
