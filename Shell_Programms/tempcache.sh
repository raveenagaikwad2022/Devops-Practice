#!/bin/bash
api_key=919d41855187fb19b0a206159995055a 

echo "Enter the city name"
read city

cache_file="./.cache/temp/data.json"
#cache file expired after seconds
cache_duration=172800   #2 days
present_city=$(jq --arg city "$city" '.[] | select (.name == $city)' $cache_file)

if [[ -f $cache_file && $present_city ]];then
   temp=$(echo $cache_file | jq -r 'main.temp')
   echo $temp
   echo "Data loading from cache file...."
   echo "The temperature of $city is $temp"
else
temp=$(curl -s "https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=${api_key}" | jq -r '.main.temp')
  echo "Fresh data Loading...."
  echo "The temperature of $city is $temp"
fi





