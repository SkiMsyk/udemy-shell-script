#!/bin/bash

var=$1
case $var in
	'blue' )
		echo 'GO';;
	'red' )
		echo 'STOP';;
	'yellow' )
		echo 'WAIT';;
	*)
		echo 'Wrong Color';;
esac

var2=$2
case $var2 in
	[a-e] )
		echo 'in a-e';;
	[A-Z] )
		echo 'in A-Z';;
	[0-9] )
		echo 'is number';;
esac
