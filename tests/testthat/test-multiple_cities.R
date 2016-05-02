api_key="a33a56ea0cb0a88c7a3388affc553e25"

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
