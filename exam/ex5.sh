#!/bin/bash

# file format: only numbers
# 1
# 2
# ...

# define functions

# sum
function sum(){
	local total=0
	while read x
	do
		total=$(( $total + $x ))
	done < $1
	echo $total
}

# avg
function avg(){
	local total=0
	local count=0
	while read x
	do
		total=$(( $total + $x ))
		count=$(( $count + 1 ))
	done < $1
	echo "$total/$count" | bc -l
}

# min
function min(){
	local count=0
	local min=0
	while read x 
	do
		if [ $count -eq 0 ];
		then
			min=$x
			count=1
		elif [ $min -gt $x ];
		then
			min=$x
		fi
	done < $1
	echo $min
}

# max
function max(){
	local count=0
	local max=0
	while read x
	do
		if [ $count -eq 0 ];
		then
		 	max=$x
			count=1
		elif [ $max -lt $x ];
		then
			max=$x
		fi
	done < $1
	echo $max
}

# receive stdin as file name
# read -p 'please input file name: ' file_name
txt_files=($(ls | grep .*.txt))

select file_name in ${txt_files[@]}
do

# check file existency
# if [ -f $file_name ];
# then
# 	echo '$file_name is exist'
# else
# 	echo '$file_name is not exist. please check file name.'
# 	exit 1
# fi

# receive new stdin of process name and then process properly for the input values
	select cmnd in sum avg min max
	do
		case $cmnd in
		"sum" ) sum $file_name;;
		"avg" ) avg $file_name;;
		"min" ) min $file_name;;
		"max" ) max $file_name;;
		esac
		break
	done
break
done
# finish this process with 'exit 0'
exit 0
