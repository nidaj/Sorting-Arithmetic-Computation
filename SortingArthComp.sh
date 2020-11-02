#!/bin/bash
echo "This problem computes different arithmetic expressions and Sorts the results"
read -p "Enter the value for a: " a
read -p "Enter the value for b: " b
read -p "Enter the value for c: " c
v1=`expr $a + $b \* $c`
v2=`expr $a % $b + $c`
v3=`expr $c + $a / $b`
v4=`expr $a \* $b + $c`

declare -A calcValues
declare -a dict2Array
i=0
calcValues[v1]=$v1
calcValues[v2]=$v2
calcValues[v3]=$v3
calcValues[v4]=$v4

for k in ${!calcValues[@]}
do
	echo $k ":" ${calcValues[$k]}
	dict2Array[$i]=${calcValues[$k]}
	((i++))
done

echo "Display Array: "
echo ${dict2Array[@]}
