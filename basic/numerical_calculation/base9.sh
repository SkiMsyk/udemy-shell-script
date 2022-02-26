#!/bin/bash

echo 1 + 1; # do not calculation
echo $(( 1 + 1 )) # do calculation
echo $(( 2 - 5 ))
echo $(( 3 * 10 ))
echo $(( 6 / 4 ))
echo $(( 6 & 4 ))

echo -------------------
echo $(expr 1 + 1 )
echo $(expr 10 - 2 )
echo $(expr 5 \* 9 )
echo $(expr 6 / 2)

num1=10
num2=20

echo ---------------------
echo $(( num1 + num2 ))
echo $(expr $num1 + $num2 )
