# Flagr::HealthApi

All URIs are relative to *http://localhost/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_health**](HealthApi.md#get_health) | **GET** /health | 


# **get_health**
> get_health



Check if Flagr is healthy

### Example
```ruby
# load the gem
require 'rbflagr'

api_instance = Flagr::HealthApi.new

begin
  api_instance.get_health
rescue Flagr::ApiError => e
  puts "Exception when calling HealthApi->get_health: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



