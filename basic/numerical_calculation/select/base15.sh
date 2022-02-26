#!/bin/bash

select v in apple banana lemon exit
do
	if [ -z $v ];
	then
		continue
	fi
	echo $v
	if [ "$v" = 'exit' ];
	then
		break
	fi
done
echo 'select end'
