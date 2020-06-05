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
echo "Original Numbers in array:"
for (( i = 0; i < 4; i++ ))
do
  echo ${a[$i]}
done



for (( i = 0; i <= 4 ; i++ ))
do
   for (( j = $i; j <= 4; j++ ))
   do
      if [ ${a[$i]} -gt ${a[$j]}  ]; then
           t=${a[$i]}
           a[$i]=${a[$j]}
           a[$j]=$t
      fi
   done
done
echo  "Sorted Numbers in Ascending Order:"
for (( i=0; i < 4; i++ )) 
do
  echo ${a[$i]}
done
echo ${a[@]}
