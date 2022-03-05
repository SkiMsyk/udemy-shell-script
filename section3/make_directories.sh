#!/bin/bash

for i in `seq 44 99`
do
	if [ -d exercise_$i ];
	then
		echo exercise_$i is already exist
	else
		mkdir exercise_${i}
	fi
done
