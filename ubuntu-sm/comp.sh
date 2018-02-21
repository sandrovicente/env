#!/bin/bash

me=`basename "$0"`


find . -type f | while read F
do
	if [[ $F = *$me* ]]; then
		continue
	fi
	echo $F
	diff ~/$F $F
    cp ~/$F $F
done

