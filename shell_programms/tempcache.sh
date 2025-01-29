#!/bin/bash
api_key=919d41855187fb19b0a206159995055a 

echo "Enter the city name"
read city

cache_file="./.cache/temp/data.json"


present_data=$(cat "$cache_file" | jq -r ".[] | select(.name == \"${city}\")")
echo "city:-$present_data"

if [[ -f $cache_file && $present_data ]];then
   temp=$(echo "$present_data" | jq -r '.main.temp')
   echo "temp:$temp"
   echo "Data loading from cache file...."
   echo "The temperature of $city is $temp"
else
temp=$(curl -s "https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=${api_key}" | jq -r '.main.temp')
  echo "Fresh data Loading...."
  echo "The temperature of $city is $temp"
fi





