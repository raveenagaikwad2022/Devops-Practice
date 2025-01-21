#!/bin/bash
api_key=919d41855187fb19b0a206159995055a 
echo "Enter the city name"

read city
echo "Do you want temp in celcius/kelvin/farenhite :"

read temp
temp_in_K=$(curl -s "https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=${api_key}" | jq -r '.main.temp')
temp_in_C=$(curl -s "https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=${api_key}&units=metric" | jq -r '.main.temp')
temp_in_F=$(curl -s "https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=${api_key}&units=imperial" | jq -r '.main.temp')

if [[ "$temp" == "celcius" ]]; then
  echo "Temperature in $city is $temp_in_C°C"
elif [[ "$temp" == "kelvin" ]]; then
  echo "Temperature in $city is $temp_in_K K"
elif [[ "$temp" == "farenhite" ]]; then
  echo "Temperature in $city is $temp_in_F F"
 fi 


