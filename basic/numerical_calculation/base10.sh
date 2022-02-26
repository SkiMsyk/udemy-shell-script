#!/bin/bash

echo '20.5+5' | bc
echo '20.5*5' | bc

echo "scale=10;sqrt(2/3)" | bc -l
echo "scale=14;sqrt(2)" | bc -l

echo "$1 + $2" | bc
