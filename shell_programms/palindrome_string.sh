#!/bin/bash
read -p "Read the string -" str
rev_str=$(echo $str | rev)
if [[ str == rev_str ]];then
  echo "String is Palindrome"
else
  echo "String is Palindrome"
fi  