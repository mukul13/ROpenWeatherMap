api_key="a33a56ea0cb0a88c7a3388affc553e25"

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
