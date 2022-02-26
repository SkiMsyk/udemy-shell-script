#!/bin/bash

# if [ -e 'sample' ]; # directory or file
# if [ -d 'sample' ]; # directory
if [ -f 'sample' ]; # file test
then
	echo 'sample is exist'
	rm sample
	echo 'sample has been deleted'
fi

# if [ 'sample1' -nt 'sample2' ];
if [ 'sample1' -ot 'sample2' ];
then
	echo 'sample1 is newer than sample2'
else
	echo 'sample1 is not newer than sample2'
fi
