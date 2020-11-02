#!/bin/bash
echo "This problem computes different arithmetic expressions and Sorts the results"
read -p "Enter the value for a: " a
read -p "Enter the value for b: " b
read -p "Enter the value for c: " c
v1=`expr $a + $b \* $c`
v2=`expr $a % $b + $c`
v3=`expr $c + $a / $b`
v4=`expr $a \* $b + $c`
