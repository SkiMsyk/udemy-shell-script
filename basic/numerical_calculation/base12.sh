#!/bin/bash

# while, break, continue

n=0

while (( $n < 10 ));
do
	echo $n
	sleep 1
	if [ $n -eq 5 ];
	then
		break;
		# continue;
	fi
	n=$(( n + 1 ))
done
exit 0

read -p 'write strings: ' var
while [ $var != 'exit' ];
do
	echo 'your input value is ' $var
	echo 'if you want to exit, please write [exit]'
	read -p 'write strings: ' var
done
