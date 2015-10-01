#!/bin/bash
#  Script.sh
#
#  Created by Marc Levine on 5/8/15.
for f in * 
do

extension=${f##*.}
filename=${f%.*}
e2=${f##*.}

if [ "$extension" == "zip" ]
then
        echo "Processing $f "
        # take action on each file. $f store current file name
#echo "unzip -d $filename $f > /dev/null"
        unzip -jq "$f" -d "$filename"
	fi
 done