#! /bin/bash
api_key=919d41855187fb19b0a206159995055a 
echo "Enter the city name"
read city
weather_info=$(curl -s "https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=${api_key}&units=metric" | jq -r '.main.temp')
echo "The temparature of $city is $weather_info°C"
temp_in_F=$(echo "scale=2; $weather_info * 9 / 5 + 32" | bc )
echo "The temparature of $city is ${temp_in_F} F"