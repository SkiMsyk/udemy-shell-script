#!/bin/bash

var1='var1'
echo $var1
# var2=`ls`
var2=$(cat test.sh)
echo $var2
echo $BASH
echo $BASH_VERSION
echo $HOME
echo $PWD
exit 0
