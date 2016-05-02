api_key="a33a56ea0cb0a88c7a3388affc553e25"

context("Testing get_weather_forecast")

test_that("Testing get_weather_forecast",{
  data=get_weather_forecast(api_key,city="london")
  expect_equal(data$cod,"200")
  
  data=get_weather_forecast(api_key,cityID=2643743)
  expect_equal(data$cod,"200")
  
}
)