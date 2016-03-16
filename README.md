# ROpenWeatherMap
R package to get weather data using OpenWeatherMap API

## Installation

To install ROpenWeatherMap package:
```R
library(devtools)
install_github("mukul13/ROpenWeatherMap")
```

To get API key,sign up [here]((http://home.openweathermap.org/))

## Examples

To list all functions supported by this package
```R
library(ROpenWeatherMap)
ls("package:ROpenWeatherMap")
```

To get current weather data for one lcoation
```R
api_key="YOUR API KEY"

### using city name
data=get_current_weather(api_key,city="mumbai")

### using cityID
data=get_current_weather(api_key,cityID = 2643743)

### using coordinates of location (lat,lon)
data=get_current_weather(api_key,coordinates = c(51.51,-0.13))

### using zip code of location
data=get_current_weather(api_key,zip_code = 781039,country = "india")
```
To get current weather data for multiple cities
```R
### to get cities within a rectangular zone
data=get_multiple_cities(api_key =api_key,bbox =  c(12,32,15,37,10))

### to get cities within a definite circle
data=get_multiple_cities(api_key =api_key,coordinates = c(55.5,37.5),count=5)

### using many cityIDs
data=get_multiple_cities(api_key =api_key,cityIDs = c(524901,703448,2643743))
```
To get weather forecast for 5 days with data every 3 hours for one location.
```R
### using city name
data=get_weather_forecast(api_key,city="london")

### using cityID
data=get_weather_forecast(api_key,cityID=2643743)
```

## Resources
* [OpenWeatherMap API](http://openweathermap.org/api)
