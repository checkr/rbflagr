# Flagr::DistributionApi

All URIs are relative to *http://localhost/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**find_distributions**](DistributionApi.md#find_distributions) | **GET** /flags/{flagID}/segments/{segmentID}/distributions | 
[**put_distributions**](DistributionApi.md#put_distributions) | **PUT** /flags/{flagID}/segments/{segmentID}/distributions | 


# **find_distributions**
> Array&lt;Distribution&gt; find_distributions(flag_id, segment_id)



### Example
```ruby
# load the gem
require 'rbflagr'

api_instance = Flagr::DistributionApi.new

flag_id = 789 # Integer | numeric ID of the flag

segment_id = 789 # Integer | numeric ID of the segment


begin
  result = api_instance.find_distributions(flag_id, segment_id)
  p result
rescue Flagr::ApiError => e
  puts "Exception when calling DistributionApi->find_distributions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **flag_id** | **Integer**| numeric ID of the flag | 
 **segment_id** | **Integer**| numeric ID of the segment | 

### Return type

[**Array&lt;Distribution&gt;**](Distribution.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_distributions**
> Array&lt;Distribution&gt; put_distributions(flag_id, segment_id, body)



replace the distribution with the new setting

### Example
```ruby
# load the gem
require 'rbflagr'

api_instance = Flagr::DistributionApi.new

flag_id = 789 # Integer | numeric ID of the flag

segment_id = 789 # Integer | numeric ID of the segment

body = Flagr::PutDistributionsRequest.new # PutDistributionsRequest | array of distributions


begin
  result = api_instance.put_distributions(flag_id, segment_id, body)
  p result
rescue Flagr::ApiError => e
  puts "Exception when calling DistributionApi->put_distributions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **flag_id** | **Integer**| numeric ID of the flag | 
 **segment_id** | **Integer**| numeric ID of the segment | 
 **body** | [**PutDistributionsRequest**](PutDistributionsRequest.md)| array of distributions | 

### Return type

[**Array&lt;Distribution&gt;**](Distribution.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



