#!/bin/bash
echo "Enter the number to check:"
read number
if (( $number % 2 == 0 ));then
  echo "$number is Even"
else
  echo "$number is Odd"  
fi  
