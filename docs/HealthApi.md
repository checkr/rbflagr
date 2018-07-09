# Flagr::HealthApi

All URIs are relative to *http://localhost/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**health_get**](HealthApi.md#health_get) | **GET** /health | 


# **health_get**
> health_get



### Example
```ruby
# load the gem
require 'rbflagr'

api_instance = Flagr::HealthApi.new

begin
  api_instance.health_get
rescue Flagr::ApiError => e
  puts "Exception when calling HealthApi->health_get: #{e}"
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



