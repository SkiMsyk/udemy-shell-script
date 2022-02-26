#!/bin/bash

function list(){
	echo $(ls)
}

function create(){
	read -p 'please tell me new file name: ' fn
	touch $fn
}

function delete(){
	read -p 'Tell me the file name you want to delete?: ' fn
	if [ -f $fn ];
	then
		rm $fn
		echo '${fn} has deleted'
	else
		echo '${fn} is not exist'
	fi
}

function rename(){
	read -p 'file from?: ' fn_from
	read -p 'file to?: ' fn_to
	if [ -f $fn_from ];
	then
		mv $fn_from $fn_to
		echo 'file name has changed'
	else
		echo '${fn_from} is not exist'
	fi
}

function show(){
	read -p 'Tell me the file name you want to show: ' fn
	if [ -f $fn ];
	then
		cat $fn
	else
		cat '${fn} is not exist'
	fi
}

select func in create list delete rename show exit
do
	case $func in 
	"list" ) list;;
	"create" ) create;;
	"delete" ) delete;;
	"rename" ) rename;;
	"show" ) show;;
	"exit" ) break;;
	esac
done
