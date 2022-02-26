#!/bin/bash

name="Tom"

function hello(){
	local name=$1
	echo $name
}

echo $name

hello 'masa'
