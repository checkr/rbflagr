# Flagr::SegmentApi

All URIs are relative to *http://localhost/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_segment**](SegmentApi.md#create_segment) | **POST** /flags/{flagID}/segments | 
[**delete_segment**](SegmentApi.md#delete_segment) | **DELETE** /flags/{flagID}/segments/{segmentID} | 
[**find_segments**](SegmentApi.md#find_segments) | **GET** /flags/{flagID}/segments | 
[**put_segment**](SegmentApi.md#put_segment) | **PUT** /flags/{flagID}/segments/{segmentID} | 


# **create_segment**
> Segment create_segment(flag_id, body)



### Example
```ruby
# load the gem
require 'rbflagr'

api_instance = Flagr::SegmentApi.new

flag_id = 789 # Integer | numeric ID of the flag to get

body = Flagr::CreateSegmentRequest.new # CreateSegmentRequest | create a segment under a flag


begin
  result = api_instance.create_segment(flag_id, body)
  p result
rescue Flagr::ApiError => e
  puts "Exception when calling SegmentApi->create_segment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **flag_id** | **Integer**| numeric ID of the flag to get | 
 **body** | [**CreateSegmentRequest**](CreateSegmentRequest.md)| create a segment under a flag | 

### Return type

[**Segment**](Segment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_segment**
> delete_segment(flag_id, segment_id)



### Example
```ruby
# load the gem
require 'rbflagr'

api_instance = Flagr::SegmentApi.new

flag_id = 789 # Integer | numeric ID of the flag

segment_id = 789 # Integer | numeric ID of the segment


begin
  api_instance.delete_segment(flag_id, segment_id)
rescue Flagr::ApiError => e
  puts "Exception when calling SegmentApi->delete_segment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **flag_id** | **Integer**| numeric ID of the flag | 
 **segment_id** | **Integer**| numeric ID of the segment | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_segments**
> Array&lt;Segment&gt; find_segments(flag_id)



### Example
```ruby
# load the gem
require 'rbflagr'

api_instance = Flagr::SegmentApi.new

flag_id = 789 # Integer | numeric ID of the flag to get


begin
  result = api_instance.find_segments(flag_id)
  p result
rescue Flagr::ApiError => e
  puts "Exception when calling SegmentApi->find_segments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **flag_id** | **Integer**| numeric ID of the flag to get | 

### Return type

[**Array&lt;Segment&gt;**](Segment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_segment**
> Segment put_segment(flag_id, segment_id, body)



### Example
```ruby
# load the gem
require 'rbflagr'

api_instance = Flagr::SegmentApi.new

flag_id = 789 # Integer | numeric ID of the flag

segment_id = 789 # Integer | numeric ID of the segment

body = Flagr::PutSegmentRequest.new # PutSegmentRequest | update a segment


begin
  result = api_instance.put_segment(flag_id, segment_id, body)
  p result
rescue Flagr::ApiError => e
  puts "Exception when calling SegmentApi->put_segment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **flag_id** | **Integer**| numeric ID of the flag | 
 **segment_id** | **Integer**| numeric ID of the segment | 
 **body** | [**PutSegmentRequest**](PutSegmentRequest.md)| update a segment | 

### Return type

[**Segment**](Segment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



