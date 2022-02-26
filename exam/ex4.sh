#!/bin/bash

# file format: only numbers
# 1
# 2
# ...

# receive stdin as file name
read -p 'please input file name: ' file_name

# check file existency
if [ -f $file_name ];
then
	echo '$file_name is exist'
else
	echo '$file_name is not exist. please check file name.'
	exit 1
fi

# receive new stdin of process name and then process properly for the input values
read -p 'please input function name you want to do: ' cmnd

count=0
total=0

while read x
do
	if [ $count -eq 0 ];
	then
		min=$x
		max=$x
	else
		if [ $min -gt $x ];
		then
			min=$x
		fi
		if [ $max -lt $x ];
		then
			max=$x
		fi
	fi
	count=$(( $count + 1 ))
	total=$(( $total + $x ))
done < $file_name

# echo $count $total $max $min
if [ $cmnd = "sum" ];
then
	echo 'sum: '
	echo  $total
elif [ $cmnd = "avg" ];
then
	echo 'avg: '
	echo "$total / $count" | bc -l
elif [ $cmnd = 'min' ];
then
	echo 'min: ' 
	echo $min
elif [ $cmnd = 'max' ];
then
	echo 'max: ' 
	echo $max
else
	echo 'funcion must be sum, avg, min or max'
	exit 1
fi

# finish this process with 'exit 0'
exit 1
