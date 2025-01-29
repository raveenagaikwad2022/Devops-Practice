echo "prompt the number of an array"
read -p "Enter the numbers separated by spaces :" -a number_array
#number_array=(4 9 5 10 13)
if [[ ${#number_array[@]} -eq 0 ]];
then
echo "Array is empty"
else
  max=${number_array[0]}
  for ((i = 1; i <= ${#number_array[@]}; i++));
   do
    if [[ ${number_array[$i]} -gt $max ]]; then
      max=${number_array[$i]}
    fi 
   done
echo "$max is greatst number"
fi
