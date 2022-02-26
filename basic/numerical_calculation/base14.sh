#!/bin/bash

for var in 1 2 3 4 5;
do
	echo $var
done

echo ------------------

for var in `seq 1 10`;
do
	echo $var
done

echo -----------------
for var in `seq 1 2 10`;
do
	echo $var
done

echo -----------------

for var in `seq 1 3 15`;
do
	echo $var
done

echo -----------------

for command in ls pwd date;
do
	echo $command
	$command
done

echo -----------------

for var in `seq 1 2 10`;
do
	echo $var
	if [ $var -eq 3 ];
	then
		# break
		continue
	fi
	echo $var
	sleep 0.5;
done
