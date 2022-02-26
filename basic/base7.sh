#!/bin/bash

# and
# if [ $1 -gt 20 ] && [ $1 -le 60 ];
# if [ $1 -gt 20 -a $1 -le 60 ];
# if [[ $1 -gt 20 && $1 -le 60 ]];
if test $1 -gt 20 && test $1 -le 60;
then
    echo 'greater than 20 and less than equal 60'
fi

# or
# if [ $2 -lt 10 ] || [ $2 -gt 60 ];
# if [ $2 -lt 10 -o $2 -gt 60];
# if [[ $2 -lt 10 || $2 -le 60 ]];
if test $2 -lt 10 || test $2 -gt 60;
then
	echo 'less than 10 or greater than 60'
fi

# if ! test $3 = 'apple';
if [ ! $3 = 'apple' ];
# if [[ ! $3 = 'apple' ]];
then
	echo 'the 3rd argument is not apple'
fi

# if exec echo 'A' properly and then exec echo 'B' 
echo 'A' && echo 'B'

# if exec echo 'C' properly and then don't exec echo 'D'
echo 'C' || echo 'D'

