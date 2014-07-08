#!/bin/bash
for x in $(ls -d */)
do 
	pattern='^.*[^/]'    #Regular expressions are "greedy", they'll match the longest substring they can from the 
	[[ $x =~ $pattern ]]   #Apply regex
	x=${BASH_REMATCH[0]}
	 
	printf "Updating" $x
	cd $x
	git pull
	cd ../
done
