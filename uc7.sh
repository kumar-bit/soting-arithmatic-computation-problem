#!/bin/bash -x
echo "enter a"
read a
echo "enter b"
read b
echo "enter c"
read c
declare -A d
d[0]="$(( a + b * c ))"
d[1]="$(( a * b + c ))"
d[2]="$(( c + a / b ))"
d[3]="$(( a % b + c ))"
echo "${d[@]}"
counter=0;
for ((i=0; i<4; i++))
do
a[$i]="${d[$i]}"

done
echo "${a[@]}"





