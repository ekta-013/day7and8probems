#!/bin/bash -x

read -p "Enter Number: " p

declare -p primefactors=($p)
counter=0

for (( i=2 ; i<=$p ; i++ ))
do
while (($p%$i == 0 ))
do
primefactors[((counter++))]=$i
p=$((p/i))
done
done
echo "prime factors is ${primefactors[@]}"
