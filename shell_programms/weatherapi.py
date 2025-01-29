import openmeteo_requests
from retry_request import retry
url = "https://api.open-meteo.com/v1/forecast"
params = {
	"latitude": 52.52,
	"longitude": 13.41,
	"hourly": "temperature_2m"
}
responses = openmeteo.weather_api(url, params=params)
daily = DailyForecast(lattitude,longitude)