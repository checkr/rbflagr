# Flagr::ConstraintApi

All URIs are relative to *http://localhost/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_constraint**](ConstraintApi.md#create_constraint) | **POST** /flags/{flagID}/segments/{segmentID}/constraints | 
[**delete_constraint**](ConstraintApi.md#delete_constraint) | **DELETE** /flags/{flagID}/segments/{segmentID}/constraints/{constraintID} | 
[**find_constraints**](ConstraintApi.md#find_constraints) | **GET** /flags/{flagID}/segments/{segmentID}/constraints | 
[**put_constraint**](ConstraintApi.md#put_constraint) | **PUT** /flags/{flagID}/segments/{segmentID}/constraints/{constraintID} | 


# **create_constraint**
> Constraint create_constraint(flag_id, segment_id, body)



### Example
```ruby
# load the gem
require 'rbflagr'

api_instance = Flagr::ConstraintApi.new

flag_id = 789 # Integer | numeric ID of the flag

segment_id = 789 # Integer | numeric ID of the segment

body = Flagr::CreateConstraintRequest.new # CreateConstraintRequest | create a constraint


begin
  result = api_instance.create_constraint(flag_id, segment_id, body)
  p result
rescue Flagr::ApiError => e
  puts "Exception when calling ConstraintApi->create_constraint: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **flag_id** | **Integer**| numeric ID of the flag | 
 **segment_id** | **Integer**| numeric ID of the segment | 
 **body** | [**CreateConstraintRequest**](CreateConstraintRequest.md)| create a constraint | 

### Return type

[**Constraint**](Constraint.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_constraint**
> delete_constraint(flag_id, segment_id, constraint_id)



### Example
```ruby
# load the gem
require 'rbflagr'

api_instance = Flagr::ConstraintApi.new

flag_id = 789 # Integer | numeric ID of the flag

segment_id = 789 # Integer | numeric ID of the segment

constraint_id = 789 # Integer | numeric ID of the constraint


begin
  api_instance.delete_constraint(flag_id, segment_id, constraint_id)
rescue Flagr::ApiError => e
  puts "Exception when calling ConstraintApi->delete_constraint: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **flag_id** | **Integer**| numeric ID of the flag | 
 **segment_id** | **Integer**| numeric ID of the segment | 
 **constraint_id** | **Integer**| numeric ID of the constraint | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_constraints**
> Array&lt;Constraint&gt; find_constraints(flag_id, segment_id)



### Example
```ruby
# load the gem
require 'rbflagr'

api_instance = Flagr::ConstraintApi.new

flag_id = 789 # Integer | numeric ID of the flag

segment_id = 789 # Integer | numeric ID of the segment


begin
  result = api_instance.find_constraints(flag_id, segment_id)
  p result
rescue Flagr::ApiError => e
  puts "Exception when calling ConstraintApi->find_constraints: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **flag_id** | **Integer**| numeric ID of the flag | 
 **segment_id** | **Integer**| numeric ID of the segment | 

### Return type

[**Array&lt;Constraint&gt;**](Constraint.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_constraint**
> Constraint put_constraint(flag_id, segment_id, constraint_id, body)



### Example
```ruby
# load the gem
require 'rbflagr'

api_instance = Flagr::ConstraintApi.new

flag_id = 789 # Integer | numeric ID of the flag

segment_id = 789 # Integer | numeric ID of the segment

constraint_id = 789 # Integer | numeric ID of the constraint

body = Flagr::CreateConstraintRequest.new # CreateConstraintRequest | create a constraint


begin
  result = api_instance.put_constraint(flag_id, segment_id, constraint_id, body)
  p result
rescue Flagr::ApiError => e
  puts "Exception when calling ConstraintApi->put_constraint: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **flag_id** | **Integer**| numeric ID of the flag | 
 **segment_id** | **Integer**| numeric ID of the segment | 
 **constraint_id** | **Integer**| numeric ID of the constraint | 
 **body** | [**CreateConstraintRequest**](CreateConstraintRequest.md)| create a constraint | 

### Return type

[**Constraint**](Constraint.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



