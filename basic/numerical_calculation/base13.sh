#!/bin/bash

cat 'sample.txt' | while read p;
do
	echo $p;
	sleep 0.5
done

echo --------------------

while read p;
do
	echo $p
	sleep 0.5
done < 'sample.txt'

exit 0

n=0
until (( $n > 5 ));
do
	echo $n
	sleep 0.5
	n=$(( n + 1 ))
done
