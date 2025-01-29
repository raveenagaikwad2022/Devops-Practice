#!/bin/bash
echo "Enter the word of file to count"
read word
#reg_process
echo "Enter the file"
read file
foundwordcount=$(grep -o "$word" "$file" | wc -l)
echo $foundword

