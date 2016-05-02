# ROpenWeatherMap

[![Travis-CI Build Status](https://travis-ci.org/mukul13/ROpenWeatherMap.svg?branch=master)](https://travis-ci.org/mukul13/ROpenWeatherMap)
[![Coverage Status](https://coveralls.io/repos/mukul13/ROpenWeatherMap/badge.svg?branch=master)](https://coveralls.io/r/mukul13/ROpenWeatherMap?branch=master)
[![Downloads](http://cranlogs.r-pkg.org/badges/grand-total/ROpenWeatherMap)](http://cran.r-project.org/package=ROpenWeatherMap)
[![cran version](http://www.r-pkg.org/badges/version/ROpenWeatherMap)](http://cran.rstudio.com/web/packages/RopenWeatherMap)

R Interface to get weather data using OpenWeatherMap API

## Installation

To install from CRAN:
```R
install.packages("ROpenWeatherMap")
```

To install latest development:
```R
library(devtools)
install_github("mukul13/ROpenWeatherMap")
```

To get API key,sign up  [here](http://home.openweathermap.org/)

## Examples

To list all functions supported by this package
```R
library(ROpenWeatherMap)
ls("package:ROpenWeatherMap")
api_key="YOUR API KEY"
```

To get current weather data for one lcoation:

```R
### using city name
data=get_current_weather(api_key,city="mumbai")
str(data)

## List of 11
## $ coord  :List of 2
##  ..$ lon: num 72.8
##  ..$ lat: num 19
## $ weather:'data.frame':	1 obs. of  4 variables:
##  ..$ id         : int 800
##  ..$ main       : chr "Clear"
##  ..$ description: chr "clear sky"
##  ..$ icon       : chr "01n"
## $ base   : chr "stations"
## $ main   :List of 7
##  ..$ temp      : num 300
##  ..$ pressure  : num 1022
##  ..$ humidity  : int 84
##  ..$ temp_min  : num 300
##  ..$ temp_max  : num 300
##  ..$ sea_level : num 1023
##  ..$ grnd_level: num 1022
##$ wind   :List of 2
##  ..$ speed: num 2.71
##  ..$ deg  : num 285
## $ clouds :List of 1
##  ..$ all: int 0
## $ dt     : int 1458134326
## $ sys    :List of 4
##  ..$ message: num 0.0074
##  ..$ country: chr "IN"
##  ..$ sunrise: int 1458090928
##  ..$ sunset : int 1458134325
## $ id     : int 1275339
## $ name   : chr "Mumbai"
## $ cod    : int 200
```
```R
### using cityID
data=get_current_weather(api_key,cityID = 2643743)
str(data)

## List of 12
##  $ coord     :List of 2
##   ..$ lon: num -0.13
##   ..$ lat: num 51.5
##  $ weather   :'data.frame':	1 obs. of  4 variables:
##   ..$ id         : int 803
##   ..$ main       : chr "Clouds"
##   ..$ description: chr "broken clouds"
##   ..$ icon       : chr "04d"
##  $ base      : chr "stations"
##  $ main      :List of 5
##   ..$ temp    : num 281
##   ..$ pressure: int 1030
##   ..$ humidity: int 74
##   ..$ temp_min: num 280
##   ..$ temp_max: num 282
##  $ visibility: int 10000
##  $ wind      :List of 2
##   ..$ speed: num 8.7
##   ..$ deg  : int 70
##  $ clouds    :List of 1
##   ..$ all: int 75
##  $ dt        : int 1458134704
##  $ sys       :List of 6
##   ..$ type   : int 1
##   ..$ id     : int 5091
##   ..$ message: num 0.0216
##   ..$ country: chr "GB"
##   ..$ sunrise: int 1458108616
##   ..$ sunset : int 1458151704
##  $ id        : int 2643743
##  $ name      : chr "London"
##  $ cod       : int 200
```

```R
### using coordinates of location (lat,lon)
data=get_current_weather(api_key,coordinates = c(51.51,-0.13))
str(data)

## List of 12
##  $ coord     :List of 2
##   ..$ lon: num -0.13
##   ..$ lat: num 51.5
##  $ weather   :'data.frame':	1 obs. of  4 variables:
##   ..$ id         : int 803
##   ..$ main       : chr "Clouds"
##   ..$ description: chr "broken clouds"
##   ..$ icon       : chr "04d"
##  $ base      : chr "stations"
##  $ main      :List of 5
##   ..$ temp    : num 281
##   ..$ pressure: int 1030
##   ..$ humidity: int 74
##   ..$ temp_min: num 280
##   ..$ temp_max: num 282
##  $ visibility: int 10000
##  $ wind      :List of 2
##   ..$ speed: num 8.7
##   ..$ deg  : int 70
##  $ clouds    :List of 1
##   ..$ all: int 75
##  $ dt        : int 1458134704
##  $ sys       :List of 6
##   ..$ type   : int 1
##   ..$ id     : int 5091
##   ..$ message: num 0.0216
##   ..$ country: chr "GB"
##   ..$ sunrise: int 1458108616
##   ..$ sunset : int 1458151704
##  $ id        : int 2643743
##  $ name      : chr "London"
##  $ cod       : int 200
```

```R
### using zip code of location
data=get_current_weather(api_key,zip_code = 781039,country = "india")
str(data)

##  $ coord  :List of 2
##   ..$ lon: int 91
##   ..$ lat: num 26.3
## $ weather:'data.frame':	1 obs. of  4 variables:
##   ..$ id         : int 500
##   ..$ main       : chr "Rain"
##   ..$ description: chr "light rain"
##   ..$ icon       : chr "10n"
##  $ base   : chr "stations"
##  $ main   :List of 7
##   ..$ temp      : num 296
##   ..$ pressure  : num 1017
##   ..$ humidity  : int 60
##   ..$ temp_min  : num 296
##   ..$ temp_max  : num 296
##   ..$ sea_level : num 1021
##   ..$ grnd_level: num 1017
##  $ wind   :List of 2
##   ..$ speed: num 4.66
##   ..$ deg  : num 274
##  $ rain   :List of 1
##   ..$ 3h: num 0.6
##  $ clouds :List of 1
##   ..$ all: int 20
##  $ dt     : int 1458134573
##  $ sys    :List of 4
##   ..$ message: num 0.007
##   ..$ country: chr "IN"
##   ..$ sunrise: int 1458086615
##   ..$ sunset : int 1458129935
##  $ id     : int 1276867
##  $ name   : chr "Barpeta"
##  $ cod    : int 200
```

To get current weather data for multiple cities
```R
### to get cities within a rectangular zone
data=get_multiple_cities(api_key =api_key,bbox =  c(12,32,15,37,10))
cbind(data$list$name,data$list$main)
##    data$list$name  temp temp_min temp_max pressure sea_level grnd_level humidity
## 1          Yafran 22.13   22.125   22.125   955.54   1028.57     955.54       29
## 2         Zuwarah 25.05   25.045   25.045  1016.45   1027.42    1016.45       44
## 3        Sabratah 18.43   18.425   18.425  1027.85   1028.33    1027.85       84
## 4         Gharyan 25.60   25.595   25.595   996.10   1027.78     996.10       22
## 5          Zawiya 25.80   25.795   25.795  1008.50   1027.58    1008.50       26
## 6         Tripoli 25.60   25.595   25.595   996.10   1027.78     996.10       22
## 7         Tarhuna 26.45   26.445   26.445   992.94   1027.98     992.94       13
## 8      Masallatah 26.73   26.725   26.725   992.83   1027.84     992.83       14
## 9        Al Khums 26.78   26.775   26.775  1015.69   1028.04    1015.69       27
## 10         Zlitan 26.35   26.345   26.345  1016.13   1028.31    1016.13       27
## 11     Birkirkara 18.06   18.000   18.100  1013.00        NA         NA       72
## 12         Ragusa 15.00   15.000   15.000  1018.00        NA         NA       72
## 13       Pozzallo 11.93   11.925   11.925  1028.26   1030.84    1028.26      100
## 14         Modica 15.00   15.000   15.000  1018.00        NA         NA       72
## 15       Rosolini 14.30   14.295   14.295  1028.77   1030.54    1028.77      100
```

```R
### to get cities within a definite circle
data=get_multiple_cities(api_key =api_key,coordinates = c(55.5,37.5),count=5)
cbind(data$list$name,data$list$main)

##   data$list$name   temp pressure humidity temp_min temp_max
## 1    Shcherbinka 276.15     1010       74   276.15   276.15
## 2     Dubrovitsy 276.15     1010       74   276.15   276.15
## 3         Butovo 276.24     1010       74   276.15   276.55
## 4     Kommunarka 276.15     1010       74   276.15   276.15
## 5    Lesparkkhoz 276.24     1010       74   276.15   276.55

```
```R
### using many cityIDs
data=get_multiple_cities(api_key =api_key,cityIDs = c(524901,703448,2643743))
cbind(data$list$name,data$list$main)

##  data$list$name temp pressure temp_min temp_max humidity
## 1         Moscow 3.09     1010      3.0      3.4       94
## 2           Kiev 7.33     1025      7.0      8.0       45
## 3         London 7.98     1030      6.9      9.0       52
```

To get weather forecast for 5 days with data every 3 hours for one location.
```R
### using city name
data=get_weather_forecast(api_key,city="london")
head(cbind(data$list$dt_txt,data$list$main$temp))

## [1,] "2016-03-16 15:00:00" "281.38" 
## [2,] "2016-03-16 18:00:00" "278.91" 
## [3,] "2016-03-16 21:00:00" "277.04" 
## [4,] "2016-03-17 00:00:00" "278.51" 
## [5,] "2016-03-17 03:00:00" "278.734"
## [6,] "2016-03-17 06:00:00" "277.15" 
```

```R
### using cityID
data=get_weather_forecast(api_key,cityID=2643743)
head(cbind(data$list$dt_txt,data$list$main$temp))

## [1,] "2016-03-16 15:00:00" "280.25" 
## [2,] "2016-03-16 18:00:00" "277.46" 
## [3,] "2016-03-16 21:00:00" "275.42" 
## [4,] "2016-03-17 00:00:00" "273.88" 
## [5,] "2016-03-17 03:00:00" "272.834"
## [6,] "2016-03-17 06:00:00" "273.75" 
```


<b>Sample Shiny App using ROpenWeatherMap :</b> [Weather forecast](https://github.com/mukul13/Projects/tree/master/Shiny%20Weather%20forecast)

## Resources
* [OpenWeatherMap API](http://openweathermap.org/api)
