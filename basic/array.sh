#!/bin/bash

fruits=('banana' 'apple' 'grape')

# show all elements
echo "${fruits[@]}"

# show first elements (index 0)
echo "${fruits[0]}"

# show index
echo "${!fruits[@]}"

# show number of elements
echo "${#fruits[@]}"

# add elements
echo 'add lemon'
fruits[3]='lemon'
echo "${fruits[@]}"

# delete elements (at index 3)
echo 'delete apple'
unset fruits[2]
echo "${fruits[@]}"

exit 0
