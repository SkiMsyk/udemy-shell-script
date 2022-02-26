#!/bin/bash

var=$1
if [ $var = 'blue' ];
then
  echo 'go ahead'
elif [ $var = 'red' ];
then
  echo 'stop'
else 
  echo 'wait'
fi

var2=$2
if [ $var2 -eq 10 ];
then
  echo 'input value is 10'
fi
if [ $var2 -lt 20 ];
then
  echo 'input value is less than 20'
elif [ $var2 -ge 60 ];
then
  echo 'input value is greater than equal 60'
else
  echo 'input value is greater than equal 20 and less than 60'
fi
