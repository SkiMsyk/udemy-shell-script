#!/bin/bash

gender=$1;
age=$2;

if [ $# -ne 2 ];
then
	exit 1;
elif [ $age -lt 0 ];
then
	exit 1;
fi

if [ $age -lt 0 ];
then
	exit 1;
elif [ $age -lt 20 ];
then
	generation='Child';
elif [ $age -lt 60 ];
then
	generation='Adult';
else
	generation='Elderly';
fi

echo "${gender^}:${generation}"
