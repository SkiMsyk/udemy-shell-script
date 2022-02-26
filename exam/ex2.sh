#!/bin/bash

ls # show list of files

read -p 'please write file name: ' file_name
read -p 'please write input values in the file: ' input_val

if [ -f $file_name ];
then
	echo $input_val >> $file_name;
else
	echo 'not exist';
fi

