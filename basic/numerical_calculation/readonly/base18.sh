#!/bin/bash

var=31
readonly var # set readonly

function hello() {
	echo "hello world"
}

readonly -f hello

hello
