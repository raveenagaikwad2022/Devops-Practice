#!/bin/bash
# define the array of number excluding one number
total_sum=5050
#create an array with an array 1 to 100
numbers=($( seq 1 100 ))

total_sum=0

# for i in "${numbers[@]}";
#   do
#     total_sum=$((total_sum + i))
#   done 
#Randomly picked an element index to remove from an array
random_index=$((RANDOM % 100))s

#store random missing number
missing_number=${numbers[$random_index]} 

unset numbers[random_index]

remaining_sum=0
for i in ${numbers[@]};
do
if (( "$i" -ne "$missing_number" )) then
  remaining_sum=$((remaining_sum + i))
  fi
done

echo "missing number:$missing_number"




