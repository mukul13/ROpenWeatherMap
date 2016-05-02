api_key="a33a56ea0cb0a88c7a3388affc553e25"

#context("Testing ROpenWeatherMap functions")

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



