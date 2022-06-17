#!/bin/bash -x

for((i=0; i<10; i++))
do
Dice[(($i))]=$((RANDOM%6+1))
done

echo "${Dice[@]}"
