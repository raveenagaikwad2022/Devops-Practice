#!/bin/bash
echo "Enter the elements of an array"
read -p "enter the elements spaces separated :" -a arr
  if [[ ${#arr[@]} -eq 0 ]];then
     echo "array is empty : Please enter the elements of an array"
     exit 1
  fi   

     min=${arr[0]}
    for ((i = 1; i < ${#arr[@]}; i++));
     do
       if [[ ${arr[$i]} -lt $min ]];then
        min=${arr[$i]}
       fi
     done  
 echo "$min is the smallest number in an array"  
  

