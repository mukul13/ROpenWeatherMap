api_key="a33a56ea0cb0a88c7a3388affc553e25"

context("Testing ROpenWeatherMap functions")

context("Testing Unauthorized access")

test_that("Testing unauthorized access",
          {
            data=get_current_weather("123",city="delhi")
            expect_equal(data$cod,401)
          
            data=get_multiple_cities("123",cityIDs =c(524901,703448,2643743))
            expect_equal(data$cod,401)
            
            data=get_weather_forecast("123",city="guwahati")
            expect_equal(data$cod,401)
          }
)

context("Testing get_current_weather")

test_that("Testing get_current_weather",{
  data=get_current_weather(api_key,city="mumbai")
  expect_equal(data$coord$lon,72.85)
  expect_equal(data$coord$lat,19.01)
  
  data=get_current_weather(api_key,cityID = 2643743)
  expect_equal(data$coord$lon,-0.13)
  expect_equal(data$coord$lat,51.51)
  
  data=get_current_weather(api_key,zip_code = 781039,country = "india")
  expect_equal(data$coord$lon,91)
  expect_equal(data$coord$lat,26.32)
}

)


context("Testing get_multiple_cities")

test_that("Testing get_multiple_cities",{
  data=get_multiple_cities(api_key =api_key,bbox =  c(12,32,15,37,10))
  expect_equal(data$cod,"200")
  
  data=get_multiple_cities(api_key =api_key,coordinates = c(55.5,37.5),count=5)
  expect_equal(data$cod,"200")
  
  data=get_multiple_cities(api_key =api_key,cityIDs = c(524901,703448,2643743))
  expect_equal(!is.data.frame(data),TRUE)

}

)


context("Testing get_weather_forecast")

test_that("Testing get_weather_forecast",{
  data=get_weather_forecast(api_key,city="london")
  expect_equal(data$cod,"200")
  
  data=get_weather_forecast(api_key,cityID=2643743)
  expect_equal(data$cod,"200")
  
}
)