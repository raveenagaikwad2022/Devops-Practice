#!/bin/bash
echo "enter number number to find factorial"
read  num
factorial=1
for i in $(seq 1 $num);
do
  factorial=$((factorial * i))
done  
echo "Factorial of number $num is $factorial"
  

